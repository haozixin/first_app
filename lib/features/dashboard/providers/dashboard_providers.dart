import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/datasources/mock_farm_data_source.dart';
import '../data/repositories/farm_repository_impl.dart';
import '../domain/repositories/farm_repository.dart';
import '../domain/usecases/get_farms_usecase.dart';
import '../presentation/controllers/dashboard_controller.dart';

// Data sources
final mockFarmDataSourceProvider = Provider<MockFarmDataSource>((ref) {
  return MockFarmDataSource();
});

// Repositories
final farmRepositoryProvider = Provider<FarmRepository>((ref) {
  final dataSource = ref.watch(mockFarmDataSourceProvider);
  return FarmRepositoryImpl(dataSource);
});

// Use cases
final getFarmsUseCaseProvider = Provider<GetFarmsUseCase>((ref) {
  final repository = ref.watch(farmRepositoryProvider);
  return GetFarmsUseCase(repository);
});

// Controllers
final dashboardControllerProvider = StateNotifierProvider<DashboardController, DashboardState>((ref) {
  final getFarmsUseCase = ref.watch(getFarmsUseCaseProvider);
  return DashboardController(getFarmsUseCase);
}); 