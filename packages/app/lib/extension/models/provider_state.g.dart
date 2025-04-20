// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProviderStateImpl _$$ProviderStateImplFromJson(Map<String, dynamic> json) =>
    _$ProviderStateImpl(
      providers:
          (json['providers'] as List<dynamic>?)
              ?.map((e) => ProviderInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      history:
          (json['history'] as List<dynamic>?)
              ?.map((e) => ProviderInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProviderStateImplToJson(_$ProviderStateImpl instance) =>
    <String, dynamic>{
      'providers': instance.providers,
      'history': instance.history,
    };
