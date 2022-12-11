import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tlv/features/home/data/models/mission.dart';
import 'package:tlv/features/home/data/repositories/mission_repository.dart';

part 'home_states.dart';
part 'home_cubit.freezed.dart';

const _minSearchStartLength = 3;

@injectable
class HomeCubit extends Cubit<HomeState> {
  final MissionRepository _dataRespoitory;

  HomeCubit(this._dataRespoitory) : super(const HomeState.loading());

  Future<void> onScrollExtentReached() async {
    state.mapOrNull(
      loaded: (loadedState) async {
        final nextPage = loadedState.page + 1;
        final searchKey = loadedState.searchKey;

        final missions = await _dataRespoitory.getMissions(
          searchKey: searchKey,
          page: nextPage,
        );

        emit(
          _errorOrCallback(
            missions,
            (missions) => HomeState.loaded(
              missions: loadedState.missions + missions,
              canLoadMore: _canLoadMore(missions),
              page: nextPage,
              searchKey: searchKey,
            ),
          ),
        );
      },
    );
  }

  void onSearchEntered(String searchKey) {
    if (searchKey.isEmpty || searchKey.length >= _minSearchStartLength) {
      EasyDebounce.debounce(
        'search_timer',
        const Duration(milliseconds: 500),
        () => loadMissions(searchKey),
      );
    }
  }

  Future<void> loadMissions([String searchKey = '']) async {
    emit(const LoadingState());

    final missions = await _dataRespoitory.getMissions(searchKey: searchKey);

    emit(
      _errorOrCallback(
        missions,
        (missions) => HomeState.loaded(
          missions: missions,
          canLoadMore: _canLoadMore(missions),
          searchKey: searchKey,
        ),
      ),
    );
  }

  HomeState _errorOrCallback(
    List<Mission>? missions,
    HomeState Function(List<Mission> missions) callback,
  ) {
    if (missions == null) {
      return const HomeState.error();
    }

    return callback(missions);
  }

  bool _canLoadMore(List<Mission> missions) {
    return missions.length >= MissionRepository.missionsPerPage;
  }
}
