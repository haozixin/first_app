// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertImpl _$$AlertImplFromJson(Map<String, dynamic> json) => _$AlertImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      severity: $enumDecode(_$AlertSeverityEnumMap, json['severity']),
      timestamp: DateTime.parse(json['timestamp'] as String),
      farmId: json['farmId'] as String,
      fieldId: json['fieldId'] as String,
    );

Map<String, dynamic> _$$AlertImplToJson(_$AlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'severity': _$AlertSeverityEnumMap[instance.severity]!,
      'timestamp': instance.timestamp.toIso8601String(),
      'farmId': instance.farmId,
      'fieldId': instance.fieldId,
    };

const _$AlertSeverityEnumMap = {
  AlertSeverity.low: 'low',
  AlertSeverity.medium: 'medium',
  AlertSeverity.high: 'high',
  AlertSeverity.critical: 'critical',
};
