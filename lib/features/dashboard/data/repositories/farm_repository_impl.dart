import '../../domain/models/farm.dart';
import '../../domain/repositories/farm_repository.dart';
import '../datasources/mock_farm_data_source.dart';

class FarmRepositoryImpl implements FarmRepository {
  final MockFarmDataSource dataSource;

  FarmRepositoryImpl(this.dataSource);

  @override
  Future<List<Farm>> getFarms() {
    return dataSource.getFarms();
  }

  @override
  Future<Farm> getFarmById(String id) {
    return dataSource.getFarmById(id);
  }
} 