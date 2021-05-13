import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tlv/domain/entities/mission.dart';

part 'home_states.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.loaded(
    List<Mission> missions, [
    @Default(false) bool loading,
  ]) = HomeStateLoaded;
}
