import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_events.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = InitEvent;
  const factory HomeEvent.scrollExtentReached() = ScrollExtentReachedEvent;
  const factory HomeEvent.searchEntered(String searchKey) = SearchEnteredEvent;
  const factory HomeEvent.timerElapsed(String searchKey) = TimerElapsedEvent;
}
