// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmImpl _$$FarmImplFromJson(Map<String, dynamic> json) => _$FarmImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      soilMoisture: (json['soilMoisture'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      droughtLevel: json['droughtLevel'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$FarmImplToJson(_$FarmImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'soilMoisture': instance.soilMoisture,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'droughtLevel': instance.droughtLevel,
      'imageUrl': instance.imageUrl,
    };
