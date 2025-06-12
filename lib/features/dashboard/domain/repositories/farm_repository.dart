import '../models/farm.dart';

abstract class FarmRepository {
  Future<List<Farm>> getFarms();
  Future<Farm> getFarmById(String id);
} 