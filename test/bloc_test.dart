import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tlv/data/models/mission.dart';
import 'package:tlv/data/repositories/mission_repository.dart';
import 'package:tlv/presentation/bloc/home_bloc.dart';
import 'package:tlv/presentation/bloc/home_events.dart';
import 'package:tlv/presentation/bloc/home_states.dart';

import 'bloc_test.mocks.dart';

@GenerateMocks([MissionRepository])
void main() {
  group('testing HomeBloc', () {
    blocTest(
      'Does initialization emit correct states',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('', 0)).thenAnswer((_) async => []);
        return HomeBloc(repo);
      },
      act: (HomeBloc bloc) => bloc.add(InitEvent()),
      expect: () => [LoadingState(), CompletedState([])],
    );
    blocTest<HomeBloc, HomeState>(
      'Does search timeout emit correct events',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('abc', 0)).thenAnswer(
            (_) async => [MissionModel(name: 'name', details: 'details')]);
        return HomeBloc(repo);
      },
      seed: () => LoadedState([]),
      act: (HomeBloc bloc) => bloc.add(TimerElapsedEvent('abc')),
      expect: () => [
        LoadingState(),
        CompletedState([MissionModel(name: 'name', details: 'details')])
      ],
    );
    blocTest<HomeBloc, HomeState>(
      'Does search emit correct events',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('abc', 0)).thenAnswer(
            (_) async => [MissionModel(name: 'name', details: 'details')]);
        return HomeBloc(repo);
      },
      seed: () => LoadedState([]),
      act: (HomeBloc bloc) => bloc.add(SearchEnteredEvent('abc')),
      wait: const Duration(milliseconds: 500),
      expect: () => [
        LoadingState(),
        CompletedState([MissionModel(name: 'name', details: 'details')])
      ],
    );
    blocTest<HomeBloc, HomeState>(
      'Does scroll requests another page',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('', 1)).thenAnswer(
            (_) async => [MissionModel(name: 'name', details: 'details')]);
        return HomeBloc(repo);
      },
      seed: () => LoadedState([]),
      act: (HomeBloc bloc) => bloc.add(ScrollExtentReachedEvent()),
      expect: () => [
        isA<CompletedState>(),
      ],
    );
  });
}
