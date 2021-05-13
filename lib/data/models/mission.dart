import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tlv/domain/entities/mission.dart';

part 'mission.freezed.dart';

@freezed
class MissionModel with _$MissionModel implements Mission {
  const factory MissionModel({
    required String name,
    required String? details,
  }) = _MissionModel;
}
