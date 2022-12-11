part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = LoadingState;
  const factory HomeState.error() = ErrorState;
  const factory HomeState.loaded({
    @Default(0) int page,
    required bool canLoadMore,
    @Default('') String searchKey,
    required List<Mission> missions,
  }) = LoadedState;
}
