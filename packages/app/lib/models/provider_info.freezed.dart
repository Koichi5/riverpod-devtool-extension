// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProviderInfo _$ProviderInfoFromJson(Map<String, dynamic> json) {
  return _ProviderInfo.fromJson(json);
}

/// @nodoc
mixin _$ProviderInfo {
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  /// Serializes this ProviderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProviderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderInfoCopyWith<ProviderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderInfoCopyWith<$Res> {
  factory $ProviderInfoCopyWith(
    ProviderInfo value,
    $Res Function(ProviderInfo) then,
  ) = _$ProviderInfoCopyWithImpl<$Res, ProviderInfo>;
  @useResult
  $Res call({String type, String? name, DateTime timestamp, String eventType});
}

/// @nodoc
class _$ProviderInfoCopyWithImpl<$Res, $Val extends ProviderInfo>
    implements $ProviderInfoCopyWith<$Res> {
  _$ProviderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? timestamp = null,
    Object? eventType = null,
  }) {
    return _then(
      _value.copyWith(
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            eventType:
                null == eventType
                    ? _value.eventType
                    : eventType // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProviderInfoImplCopyWith<$Res>
    implements $ProviderInfoCopyWith<$Res> {
  factory _$$ProviderInfoImplCopyWith(
    _$ProviderInfoImpl value,
    $Res Function(_$ProviderInfoImpl) then,
  ) = __$$ProviderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? name, DateTime timestamp, String eventType});
}

/// @nodoc
class __$$ProviderInfoImplCopyWithImpl<$Res>
    extends _$ProviderInfoCopyWithImpl<$Res, _$ProviderInfoImpl>
    implements _$$ProviderInfoImplCopyWith<$Res> {
  __$$ProviderInfoImplCopyWithImpl(
    _$ProviderInfoImpl _value,
    $Res Function(_$ProviderInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProviderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? timestamp = null,
    Object? eventType = null,
  }) {
    return _then(
      _$ProviderInfoImpl(
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        eventType:
            null == eventType
                ? _value.eventType
                : eventType // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderInfoImpl implements _ProviderInfo {
  const _$ProviderInfoImpl({
    required this.type,
    this.name,
    required this.timestamp,
    required this.eventType,
  });

  factory _$ProviderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderInfoImplFromJson(json);

  @override
  final String type;
  @override
  final String? name;
  @override
  final DateTime timestamp;
  @override
  final String eventType;

  @override
  String toString() {
    return 'ProviderInfo(type: $type, name: $name, timestamp: $timestamp, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderInfoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, timestamp, eventType);

  /// Create a copy of ProviderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderInfoImplCopyWith<_$ProviderInfoImpl> get copyWith =>
      __$$ProviderInfoImplCopyWithImpl<_$ProviderInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderInfoImplToJson(this);
  }
}

abstract class _ProviderInfo implements ProviderInfo {
  const factory _ProviderInfo({
    required final String type,
    final String? name,
    required final DateTime timestamp,
    required final String eventType,
  }) = _$ProviderInfoImpl;

  factory _ProviderInfo.fromJson(Map<String, dynamic> json) =
      _$ProviderInfoImpl.fromJson;

  @override
  String get type;
  @override
  String? get name;
  @override
  DateTime get timestamp;
  @override
  String get eventType;

  /// Create a copy of ProviderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderInfoImplCopyWith<_$ProviderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
