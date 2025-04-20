// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProviderState _$ProviderStateFromJson(Map<String, dynamic> json) {
  return _ProviderState.fromJson(json);
}

/// @nodoc
mixin _$ProviderState {
  List<ProviderInfo> get providers => throw _privateConstructorUsedError;
  List<ProviderInfo> get history => throw _privateConstructorUsedError;

  /// Serializes this ProviderState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderStateCopyWith<ProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderStateCopyWith<$Res> {
  factory $ProviderStateCopyWith(
    ProviderState value,
    $Res Function(ProviderState) then,
  ) = _$ProviderStateCopyWithImpl<$Res, ProviderState>;
  @useResult
  $Res call({List<ProviderInfo> providers, List<ProviderInfo> history});
}

/// @nodoc
class _$ProviderStateCopyWithImpl<$Res, $Val extends ProviderState>
    implements $ProviderStateCopyWith<$Res> {
  _$ProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? providers = null, Object? history = null}) {
    return _then(
      _value.copyWith(
            providers:
                null == providers
                    ? _value.providers
                    : providers // ignore: cast_nullable_to_non_nullable
                        as List<ProviderInfo>,
            history:
                null == history
                    ? _value.history
                    : history // ignore: cast_nullable_to_non_nullable
                        as List<ProviderInfo>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProviderStateImplCopyWith<$Res>
    implements $ProviderStateCopyWith<$Res> {
  factory _$$ProviderStateImplCopyWith(
    _$ProviderStateImpl value,
    $Res Function(_$ProviderStateImpl) then,
  ) = __$$ProviderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProviderInfo> providers, List<ProviderInfo> history});
}

/// @nodoc
class __$$ProviderStateImplCopyWithImpl<$Res>
    extends _$ProviderStateCopyWithImpl<$Res, _$ProviderStateImpl>
    implements _$$ProviderStateImplCopyWith<$Res> {
  __$$ProviderStateImplCopyWithImpl(
    _$ProviderStateImpl _value,
    $Res Function(_$ProviderStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? providers = null, Object? history = null}) {
    return _then(
      _$ProviderStateImpl(
        providers:
            null == providers
                ? _value._providers
                : providers // ignore: cast_nullable_to_non_nullable
                    as List<ProviderInfo>,
        history:
            null == history
                ? _value._history
                : history // ignore: cast_nullable_to_non_nullable
                    as List<ProviderInfo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderStateImpl implements _ProviderState {
  const _$ProviderStateImpl({
    final List<ProviderInfo> providers = const [],
    final List<ProviderInfo> history = const [],
  }) : _providers = providers,
       _history = history;

  factory _$ProviderStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderStateImplFromJson(json);

  final List<ProviderInfo> _providers;
  @override
  @JsonKey()
  List<ProviderInfo> get providers {
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providers);
  }

  final List<ProviderInfo> _history;
  @override
  @JsonKey()
  List<ProviderInfo> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'ProviderState(providers: $providers, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderStateImpl &&
            const DeepCollectionEquality().equals(
              other._providers,
              _providers,
            ) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_providers),
    const DeepCollectionEquality().hash(_history),
  );

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderStateImplCopyWith<_$ProviderStateImpl> get copyWith =>
      __$$ProviderStateImplCopyWithImpl<_$ProviderStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderStateImplToJson(this);
  }
}

abstract class _ProviderState implements ProviderState {
  const factory _ProviderState({
    final List<ProviderInfo> providers,
    final List<ProviderInfo> history,
  }) = _$ProviderStateImpl;

  factory _ProviderState.fromJson(Map<String, dynamic> json) =
      _$ProviderStateImpl.fromJson;

  @override
  List<ProviderInfo> get providers;
  @override
  List<ProviderInfo> get history;

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderStateImplCopyWith<_$ProviderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
