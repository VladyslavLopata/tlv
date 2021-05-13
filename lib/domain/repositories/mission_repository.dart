import 'package:tlv/domain/entities/mission.dart';

abstract class IMissionRepository {
  Future<List<Mission>> getMissions(String search, int page);
}
