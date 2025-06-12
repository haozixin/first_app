import 'dart:async';

import '../../domain/models/farm.dart';

class MockFarmDataSource {
  final List<Farm> _mockFarms = [
    const Farm(
      id: '1',
      name: 'Farm 1',
      location: 'East Region',
      soilMoisture: 75.0,
      droughtLevel: 'Low',
      imageAsset: 'assets/images/farm1.jpg',
    ),
    const Farm(
      id: '2',
      name: 'Farm 2',
      location: 'South Region',
      soilMoisture: 40.0,
      droughtLevel: 'Medium',
      imageAsset: 'assets/images/farm2.jpg',
    ),
    const Farm(
      id: '3',
      name: 'Farm 3',
      location: 'West Region',
      soilMoisture: 85.0,
      droughtLevel: 'Low',
      imageAsset: 'assets/images/farm3.jpg',
    ),
    const Farm(
      id: '4',
      name: 'Farm 4',
      location: 'North Region',
      soilMoisture: 25.0,
      droughtLevel: 'High',
      imageAsset: 'assets/images/farm4.jpg',
    ),
  ];

  Future<List<Farm>> getFarms() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));
    return _mockFarms;
  }

  Future<Farm> getFarmById(String id) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    
    final farm = _mockFarms.firstWhere(
      (farm) => farm.id == id,
      orElse: () => throw Exception('Farm not found'),
    );
    
    return farm;
  }
} 