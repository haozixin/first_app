import '../models/farm.dart';
import '../repositories/farm_repository.dart';

class GetFarmByIdUseCase {
  final FarmRepository repository;

  GetFarmByIdUseCase(this.repository);

  Future<Farm> execute(String id) {
    return repository.getFarmById(id);
  }
} 