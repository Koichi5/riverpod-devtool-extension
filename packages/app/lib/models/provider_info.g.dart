// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProviderInfoImpl _$$ProviderInfoImplFromJson(Map<String, dynamic> json) =>
    _$ProviderInfoImpl(
      type: json['type'] as String,
      name: json['name'] as String?,
      timestamp: DateTime.parse(json['timestamp'] as String),
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ProviderInfoImplToJson(_$ProviderInfoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'timestamp': instance.timestamp.toIso8601String(),
      'eventType': instance.eventType,
    };
