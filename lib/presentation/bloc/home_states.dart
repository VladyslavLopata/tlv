import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tlv/domain/entities/mission.dart';

part 'home_states.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = LoadingState;
  const factory HomeState.loaded(List<Mission> missions) = LoadedState;
  const factory HomeState.completed(List<Mission> missions) = CompletedState;
}
