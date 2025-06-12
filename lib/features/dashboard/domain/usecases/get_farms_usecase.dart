import '../models/farm.dart';
import '../repositories/farm_repository.dart';

class GetFarmsUseCase {
  final FarmRepository repository;

  GetFarmsUseCase(this.repository);

  Future<List<Farm>> execute() {
    return repository.getFarms();
  }
} 