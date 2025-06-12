import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/farm.dart';
import '../../domain/usecases/get_farms_usecase.dart';

class DashboardState {
  final bool isLoading;
  final List<Farm> farms;
  final String? errorMessage;

  DashboardState({
    required this.isLoading,
    required this.farms,
    this.errorMessage,
  });

  DashboardState copyWith({
    bool? isLoading,
    List<Farm>? farms,
    String? errorMessage,
  }) {
    return DashboardState(
      isLoading: isLoading ?? this.isLoading,
      farms: farms ?? this.farms,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  factory DashboardState.initial() {
    return DashboardState(
      isLoading: false,
      farms: [],
      errorMessage: null,
    );
  }
}

class DashboardController extends StateNotifier<DashboardState> {
  final GetFarmsUseCase getFarmsUseCase;

  DashboardController(this.getFarmsUseCase) : super(DashboardState.initial());

  Future<void> loadFarms() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final farms = await getFarmsUseCase.execute();
      state = state.copyWith(farms: farms, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: 'Failed to load farms: ${e.toString()}',
      );
    }
  }
} 