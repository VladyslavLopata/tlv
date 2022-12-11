import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission.freezed.dart';
part 'mission.g.dart';

@freezed
class Mission with _$Mission {
  const factory Mission({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'mission_name') required String name,
    String? details,
  }) = _Mission;

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);
}
