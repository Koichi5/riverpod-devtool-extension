import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider_info.freezed.dart';
part 'provider_info.g.dart';

@freezed
class ProviderInfo with _$ProviderInfo {
  const factory ProviderInfo({
    required String type,
    String? name,
    required DateTime timestamp,
    required String eventType,
  }) = _ProviderInfo;

  factory ProviderInfo.fromJson(Map<String, dynamic> json) =>
      _$ProviderInfoFromJson(json);
}
