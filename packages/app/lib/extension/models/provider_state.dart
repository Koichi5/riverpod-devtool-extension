import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app/extension/models/provider_info.dart';

part 'provider_state.freezed.dart';
part 'provider_state.g.dart';

@freezed
class ProviderState with _$ProviderState {
  const factory ProviderState({
    @Default([]) List<ProviderInfo> providers,
    @Default([]) List<ProviderInfo> history,
  }) = _ProviderState;

  factory ProviderState.fromJson(Map<String, dynamic> json) =>
      _$ProviderStateFromJson(json);
}
