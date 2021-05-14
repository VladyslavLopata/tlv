import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlv/domain/repositories/mission_repository.dart';
import 'package:tlv/presentation/bloc/home_events.dart';
import 'package:tlv/presentation/bloc/home_states.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IMissionRepository _dataRespoitory;
  late String _searchKey;
  late int _page;
  Timer? _timer;

  HomeBloc(this._dataRespoitory) : super(LoadingState()) {
    _searchKey = '';
    _page = 0;
  }

  Stream<HomeState> _initialization() async* {
    yield* _getData;
  }

  Stream<HomeState> _scrollExtentReached() async* {
    if (state is LoadedState) {
      final _state = (state as LoadedState);
      _page++;
      yield await _dataRespoitory.getMissions(_searchKey, _page).then(
        (missions) {
          if (missions.length < 10) return CompletedState(_state.missions);
          return LoadedState(
            _state.missions + missions,
          );
        },
      );
    }
  }

  Stream<HomeState> _searchEntered(String searchKey) async* {
    _timer?.cancel();
    if (searchKey.isEmpty || searchKey.length >= 3) {
      _timer = _buildTimer(searchKey);
    }
  }

  Stream<HomeState> _timerElapsed(String searchKey) async* {
    _searchKey = searchKey;
    _page = 0;
    yield* _getData;
  }

  Timer _buildTimer(String searchKey) => Timer(
        Duration(milliseconds: 500),
        () => add(
          TimerElapsedEvent(searchKey),
        ),
      );

  Stream<HomeState> get _getData async* {
    yield LoadingState();
    yield await _dataRespoitory.getMissions(_searchKey, _page).then(
      (missions) {
        if (missions.length < 10) return CompletedState(missions);
        return LoadedState(missions);
      },
    );
  }

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.when(
      scrollExtentReached: _scrollExtentReached,
      searchEntered: _searchEntered,
      timerElapsed: _timerElapsed,
      init: _initialization,
    );
  }
}
