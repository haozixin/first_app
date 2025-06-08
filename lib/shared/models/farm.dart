import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm.freezed.dart';
part 'farm.g.dart';

@freezed
class Farm with _$Farm {
  const factory Farm({
    required String id,
    required String name,
    required String location,
    required double soilMoisture,
    required double temperature,
    required double humidity,
    required String droughtLevel,
    required String imageUrl,
  }) = _Farm;

  factory Farm.fromJson(Map<String, dynamic> json) => _$FarmFromJson(json);
}

enum DroughtLevel {
  low,
  moderate,
  high,
  severe,
} 