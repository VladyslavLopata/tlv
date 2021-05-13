import 'dart:async';

import 'package:tlv/data/repositories/mission_repository.dart';
import 'package:tlv/presentation/bloc/home_events.dart';
import 'package:tlv/presentation/bloc/home_states.dart';
import 'package:tlv/services/service_locator.dart';

class HomeBlock {
  late final StreamController<HomeState> _stateStream;
  late final StreamController<HomeEvent> _eventStream;
  late final StreamSubscription _stateSubscription;
  late final StreamSubscription _eventSubscription;
  HomeState _currentState = HomeStateLoading();
  late final MissionRepository _dataRespoitory;
  late int _page;
  late String _search;

  HomeBlock() {
    _page = 0;
    _search = '';
    _dataRespoitory = locator<MissionRepository>();

    _stateStream = StreamController<HomeState>.broadcast();
    _eventStream = StreamController<HomeEvent>.broadcast();

    _stateSubscription = _stateStream.stream.listen((event) {
      _currentState = event;
    });
    _eventSubscription = _eventStream.stream.listen(_eventMapper);

    _stateStream.addStream(_initialization);
  }

  void _eventMapper(HomeEvent event) {
    _stateStream.addStream(_mapEventToState(event));
  }

  Stream<HomeState> _mapEventToState(HomeEvent event) async* {
    if (event is ScrollExtentReachedEvent && _currentState is HomeStateLoaded) {
      final currentState = _currentState as HomeStateLoaded;
      yield currentState.copyWith(loading: true);
      yield await _dataRespoitory.getMissions(_search, _page++).then<HomeState>(
            (missions) => HomeStateLoaded(
              (currentState).missions + missions,
            ),
          );
    }
  }

  Stream<HomeState> get _initialization async* {
    yield HomeStateLoading();
    yield await _dataRespoitory
        .getMissions('', 1)
        .then<HomeState>((missions) => HomeStateLoaded(missions))
        .catchError((_) {});
  }

  Stream<HomeState> get dataStream => _stateStream.stream;
  HomeState get currentState => _currentState;
  void pushEvent(HomeEvent event) => _eventStream.add(event);

  void onDispose() {
    _stateSubscription.cancel();
    _eventSubscription.cancel();
    _stateStream.close();
    _eventStream.close();
  }
}
