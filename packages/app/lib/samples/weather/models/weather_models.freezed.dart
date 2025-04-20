// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get elevation => throw _privateConstructorUsedError;
  @JsonKey(name: 'generationtime_ms')
  double get generationtimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation => throw _privateConstructorUsedError;
  HourlyWeather get hourly => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_units')
  HourlyUnits get hourlyUnits => throw _privateConstructorUsedError;
  DailyWeather get daily => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_units')
  DailyUnits get dailyUnits => throw _privateConstructorUsedError;

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
    WeatherResponse value,
    $Res Function(WeatherResponse) then,
  ) = _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call({
    double latitude,
    double longitude,
    double elevation,
    @JsonKey(name: 'generationtime_ms') double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
    String timezone,
    @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
    HourlyWeather hourly,
    @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
    DailyWeather daily,
    @JsonKey(name: 'daily_units') DailyUnits dailyUnits,
  });

  $HourlyWeatherCopyWith<$Res> get hourly;
  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  $DailyWeatherCopyWith<$Res> get daily;
  $DailyUnitsCopyWith<$Res> get dailyUnits;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? elevation = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? hourly = null,
    Object? hourlyUnits = null,
    Object? daily = null,
    Object? dailyUnits = null,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            elevation:
                null == elevation
                    ? _value.elevation
                    : elevation // ignore: cast_nullable_to_non_nullable
                        as double,
            generationtimeMs:
                null == generationtimeMs
                    ? _value.generationtimeMs
                    : generationtimeMs // ignore: cast_nullable_to_non_nullable
                        as double,
            utcOffsetSeconds:
                null == utcOffsetSeconds
                    ? _value.utcOffsetSeconds
                    : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
                        as int,
            timezone:
                null == timezone
                    ? _value.timezone
                    : timezone // ignore: cast_nullable_to_non_nullable
                        as String,
            timezoneAbbreviation:
                null == timezoneAbbreviation
                    ? _value.timezoneAbbreviation
                    : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
                        as String,
            hourly:
                null == hourly
                    ? _value.hourly
                    : hourly // ignore: cast_nullable_to_non_nullable
                        as HourlyWeather,
            hourlyUnits:
                null == hourlyUnits
                    ? _value.hourlyUnits
                    : hourlyUnits // ignore: cast_nullable_to_non_nullable
                        as HourlyUnits,
            daily:
                null == daily
                    ? _value.daily
                    : daily // ignore: cast_nullable_to_non_nullable
                        as DailyWeather,
            dailyUnits:
                null == dailyUnits
                    ? _value.dailyUnits
                    : dailyUnits // ignore: cast_nullable_to_non_nullable
                        as DailyUnits,
          )
          as $Val,
    );
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyWeatherCopyWith<$Res> get hourly {
    return $HourlyWeatherCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res> get hourlyUnits {
    return $HourlyUnitsCopyWith<$Res>(_value.hourlyUnits, (value) {
      return _then(_value.copyWith(hourlyUnits: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyWeatherCopyWith<$Res> get daily {
    return $DailyWeatherCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<$Res> get dailyUnits {
    return $DailyUnitsCopyWith<$Res>(_value.dailyUnits, (value) {
      return _then(_value.copyWith(dailyUnits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(
    _$WeatherResponseImpl value,
    $Res Function(_$WeatherResponseImpl) then,
  ) = __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double latitude,
    double longitude,
    double elevation,
    @JsonKey(name: 'generationtime_ms') double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
    String timezone,
    @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
    HourlyWeather hourly,
    @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
    DailyWeather daily,
    @JsonKey(name: 'daily_units') DailyUnits dailyUnits,
  });

  @override
  $HourlyWeatherCopyWith<$Res> get hourly;
  @override
  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  @override
  $DailyWeatherCopyWith<$Res> get daily;
  @override
  $DailyUnitsCopyWith<$Res> get dailyUnits;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
    _$WeatherResponseImpl _value,
    $Res Function(_$WeatherResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? elevation = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? hourly = null,
    Object? hourlyUnits = null,
    Object? daily = null,
    Object? dailyUnits = null,
  }) {
    return _then(
      _$WeatherResponseImpl(
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        elevation:
            null == elevation
                ? _value.elevation
                : elevation // ignore: cast_nullable_to_non_nullable
                    as double,
        generationtimeMs:
            null == generationtimeMs
                ? _value.generationtimeMs
                : generationtimeMs // ignore: cast_nullable_to_non_nullable
                    as double,
        utcOffsetSeconds:
            null == utcOffsetSeconds
                ? _value.utcOffsetSeconds
                : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
                    as int,
        timezone:
            null == timezone
                ? _value.timezone
                : timezone // ignore: cast_nullable_to_non_nullable
                    as String,
        timezoneAbbreviation:
            null == timezoneAbbreviation
                ? _value.timezoneAbbreviation
                : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
                    as String,
        hourly:
            null == hourly
                ? _value.hourly
                : hourly // ignore: cast_nullable_to_non_nullable
                    as HourlyWeather,
        hourlyUnits:
            null == hourlyUnits
                ? _value.hourlyUnits
                : hourlyUnits // ignore: cast_nullable_to_non_nullable
                    as HourlyUnits,
        daily:
            null == daily
                ? _value.daily
                : daily // ignore: cast_nullable_to_non_nullable
                    as DailyWeather,
        dailyUnits:
            null == dailyUnits
                ? _value.dailyUnits
                : dailyUnits // ignore: cast_nullable_to_non_nullable
                    as DailyUnits,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl({
    required this.latitude,
    required this.longitude,
    required this.elevation,
    @JsonKey(name: 'generationtime_ms') required this.generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') required this.utcOffsetSeconds,
    required this.timezone,
    @JsonKey(name: 'timezone_abbreviation') required this.timezoneAbbreviation,
    required this.hourly,
    @JsonKey(name: 'hourly_units') required this.hourlyUnits,
    required this.daily,
    @JsonKey(name: 'daily_units') required this.dailyUnits,
  });

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double elevation;
  @override
  @JsonKey(name: 'generationtime_ms')
  final double generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  final int utcOffsetSeconds;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  final String timezoneAbbreviation;
  @override
  final HourlyWeather hourly;
  @override
  @JsonKey(name: 'hourly_units')
  final HourlyUnits hourlyUnits;
  @override
  final DailyWeather daily;
  @override
  @JsonKey(name: 'daily_units')
  final DailyUnits dailyUnits;

  @override
  String toString() {
    return 'WeatherResponse(latitude: $latitude, longitude: $longitude, elevation: $elevation, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, hourly: $hourly, hourlyUnits: $hourlyUnits, daily: $daily, dailyUnits: $dailyUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.daily, daily) || other.daily == daily) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    latitude,
    longitude,
    elevation,
    generationtimeMs,
    utcOffsetSeconds,
    timezone,
    timezoneAbbreviation,
    hourly,
    hourlyUnits,
    daily,
    dailyUnits,
  );

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(this);
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse({
    required final double latitude,
    required final double longitude,
    required final double elevation,
    @JsonKey(name: 'generationtime_ms') required final double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') required final int utcOffsetSeconds,
    required final String timezone,
    @JsonKey(name: 'timezone_abbreviation')
    required final String timezoneAbbreviation,
    required final HourlyWeather hourly,
    @JsonKey(name: 'hourly_units') required final HourlyUnits hourlyUnits,
    required final DailyWeather daily,
    @JsonKey(name: 'daily_units') required final DailyUnits dailyUnits,
  }) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get elevation;
  @override
  @JsonKey(name: 'generationtime_ms')
  double get generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds;
  @override
  String get timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation;
  @override
  HourlyWeather get hourly;
  @override
  @JsonKey(name: 'hourly_units')
  HourlyUnits get hourlyUnits;
  @override
  DailyWeather get daily;
  @override
  @JsonKey(name: 'daily_units')
  DailyUnits get dailyUnits;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) {
  return _HourlyWeather.fromJson(json);
}

/// @nodoc
mixin _$HourlyWeather {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability => throw _privateConstructorUsedError;
  List<double> get precipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed10m => throw _privateConstructorUsedError;

  /// Serializes this HourlyWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
    HourlyWeather value,
    $Res Function(HourlyWeather) then,
  ) = _$HourlyWeatherCopyWithImpl<$Res, HourlyWeather>;
  @useResult
  $Res call({
    List<String> time,
    @JsonKey(name: 'temperature_2m') List<double> temperature2m,
    @JsonKey(name: 'relative_humidity_2m') List<int> relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    List<int> precipitationProbability,
    List<double> precipitation,
    @JsonKey(name: 'weather_code') List<int> weatherCode,
    @JsonKey(name: 'wind_speed_10m') List<double> windSpeed10m,
  });
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res, $Val extends HourlyWeather>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? windSpeed10m = null,
  }) {
    return _then(
      _value.copyWith(
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            temperature2m:
                null == temperature2m
                    ? _value.temperature2m
                    : temperature2m // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            relativeHumidity2m:
                null == relativeHumidity2m
                    ? _value.relativeHumidity2m
                    : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            apparentTemperature:
                null == apparentTemperature
                    ? _value.apparentTemperature
                    : apparentTemperature // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            precipitationProbability:
                null == precipitationProbability
                    ? _value.precipitationProbability
                    : precipitationProbability // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            precipitation:
                null == precipitation
                    ? _value.precipitation
                    : precipitation // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            weatherCode:
                null == weatherCode
                    ? _value.weatherCode
                    : weatherCode // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            windSpeed10m:
                null == windSpeed10m
                    ? _value.windSpeed10m
                    : windSpeed10m // ignore: cast_nullable_to_non_nullable
                        as List<double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HourlyWeatherImplCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$$HourlyWeatherImplCopyWith(
    _$HourlyWeatherImpl value,
    $Res Function(_$HourlyWeatherImpl) then,
  ) = __$$HourlyWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> time,
    @JsonKey(name: 'temperature_2m') List<double> temperature2m,
    @JsonKey(name: 'relative_humidity_2m') List<int> relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    List<int> precipitationProbability,
    List<double> precipitation,
    @JsonKey(name: 'weather_code') List<int> weatherCode,
    @JsonKey(name: 'wind_speed_10m') List<double> windSpeed10m,
  });
}

/// @nodoc
class __$$HourlyWeatherImplCopyWithImpl<$Res>
    extends _$HourlyWeatherCopyWithImpl<$Res, _$HourlyWeatherImpl>
    implements _$$HourlyWeatherImplCopyWith<$Res> {
  __$$HourlyWeatherImplCopyWithImpl(
    _$HourlyWeatherImpl _value,
    $Res Function(_$HourlyWeatherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? windSpeed10m = null,
  }) {
    return _then(
      _$HourlyWeatherImpl(
        time:
            null == time
                ? _value._time
                : time // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        temperature2m:
            null == temperature2m
                ? _value._temperature2m
                : temperature2m // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        relativeHumidity2m:
            null == relativeHumidity2m
                ? _value._relativeHumidity2m
                : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        apparentTemperature:
            null == apparentTemperature
                ? _value._apparentTemperature
                : apparentTemperature // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        precipitationProbability:
            null == precipitationProbability
                ? _value._precipitationProbability
                : precipitationProbability // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        precipitation:
            null == precipitation
                ? _value._precipitation
                : precipitation // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        weatherCode:
            null == weatherCode
                ? _value._weatherCode
                : weatherCode // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        windSpeed10m:
            null == windSpeed10m
                ? _value._windSpeed10m
                : windSpeed10m // ignore: cast_nullable_to_non_nullable
                    as List<double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyWeatherImpl implements _HourlyWeather {
  const _$HourlyWeatherImpl({
    required final List<String> time,
    @JsonKey(name: 'temperature_2m') required final List<double> temperature2m,
    @JsonKey(name: 'relative_humidity_2m')
    required final List<int> relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature')
    required final List<double> apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required final List<int> precipitationProbability,
    required final List<double> precipitation,
    @JsonKey(name: 'weather_code') required final List<int> weatherCode,
    @JsonKey(name: 'wind_speed_10m') required final List<double> windSpeed10m,
  }) : _time = time,
       _temperature2m = temperature2m,
       _relativeHumidity2m = relativeHumidity2m,
       _apparentTemperature = apparentTemperature,
       _precipitationProbability = precipitationProbability,
       _precipitation = precipitation,
       _weatherCode = weatherCode,
       _windSpeed10m = windSpeed10m;

  factory _$HourlyWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyWeatherImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature2m;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2m {
    if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2m);
  }

  final List<int> _relativeHumidity2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity2m {
    if (_relativeHumidity2m is EqualUnmodifiableListView)
      return _relativeHumidity2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativeHumidity2m);
  }

  final List<double> _apparentTemperature;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature {
    if (_apparentTemperature is EqualUnmodifiableListView)
      return _apparentTemperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperature);
  }

  final List<int> _precipitationProbability;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability {
    if (_precipitationProbability is EqualUnmodifiableListView)
      return _precipitationProbability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbability);
  }

  final List<double> _precipitation;
  @override
  List<double> get precipitation {
    if (_precipitation is EqualUnmodifiableListView) return _precipitation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitation);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<double> _windSpeed10m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed10m {
    if (_windSpeed10m is EqualUnmodifiableListView) return _windSpeed10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed10m);
  }

  @override
  String toString() {
    return 'HourlyWeather(time: $time, temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, apparentTemperature: $apparentTemperature, precipitationProbability: $precipitationProbability, precipitation: $precipitation, weatherCode: $weatherCode, windSpeed10m: $windSpeed10m)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyWeatherImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality().equals(
              other._temperature2m,
              _temperature2m,
            ) &&
            const DeepCollectionEquality().equals(
              other._relativeHumidity2m,
              _relativeHumidity2m,
            ) &&
            const DeepCollectionEquality().equals(
              other._apparentTemperature,
              _apparentTemperature,
            ) &&
            const DeepCollectionEquality().equals(
              other._precipitationProbability,
              _precipitationProbability,
            ) &&
            const DeepCollectionEquality().equals(
              other._precipitation,
              _precipitation,
            ) &&
            const DeepCollectionEquality().equals(
              other._weatherCode,
              _weatherCode,
            ) &&
            const DeepCollectionEquality().equals(
              other._windSpeed10m,
              _windSpeed10m,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_time),
    const DeepCollectionEquality().hash(_temperature2m),
    const DeepCollectionEquality().hash(_relativeHumidity2m),
    const DeepCollectionEquality().hash(_apparentTemperature),
    const DeepCollectionEquality().hash(_precipitationProbability),
    const DeepCollectionEquality().hash(_precipitation),
    const DeepCollectionEquality().hash(_weatherCode),
    const DeepCollectionEquality().hash(_windSpeed10m),
  );

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      __$$HourlyWeatherImplCopyWithImpl<_$HourlyWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyWeatherImplToJson(this);
  }
}

abstract class _HourlyWeather implements HourlyWeather {
  const factory _HourlyWeather({
    required final List<String> time,
    @JsonKey(name: 'temperature_2m') required final List<double> temperature2m,
    @JsonKey(name: 'relative_humidity_2m')
    required final List<int> relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature')
    required final List<double> apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required final List<int> precipitationProbability,
    required final List<double> precipitation,
    @JsonKey(name: 'weather_code') required final List<int> weatherCode,
    @JsonKey(name: 'wind_speed_10m') required final List<double> windSpeed10m,
  }) = _$HourlyWeatherImpl;

  factory _HourlyWeather.fromJson(Map<String, dynamic> json) =
      _$HourlyWeatherImpl.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity2m;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability;
  @override
  List<double> get precipitation;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed10m;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) {
  return _HourlyUnits.fromJson(json);
}

/// @nodoc
mixin _$HourlyUnits {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  String get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  String get relativeHumidity2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature')
  String get apparentTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability')
  String get precipitationProbability => throw _privateConstructorUsedError;
  String get precipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  String get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  String get windSpeed10m => throw _privateConstructorUsedError;

  /// Serializes this HourlyUnits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyUnitsCopyWith<HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyUnitsCopyWith<$Res> {
  factory $HourlyUnitsCopyWith(
    HourlyUnits value,
    $Res Function(HourlyUnits) then,
  ) = _$HourlyUnitsCopyWithImpl<$Res, HourlyUnits>;
  @useResult
  $Res call({
    String time,
    @JsonKey(name: 'temperature_2m') String temperature2m,
    @JsonKey(name: 'relative_humidity_2m') String relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature') String apparentTemperature,
    @JsonKey(name: 'precipitation_probability') String precipitationProbability,
    String precipitation,
    @JsonKey(name: 'weather_code') String weatherCode,
    @JsonKey(name: 'wind_speed_10m') String windSpeed10m,
  });
}

/// @nodoc
class _$HourlyUnitsCopyWithImpl<$Res, $Val extends HourlyUnits>
    implements $HourlyUnitsCopyWith<$Res> {
  _$HourlyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? windSpeed10m = null,
  }) {
    return _then(
      _value.copyWith(
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as String,
            temperature2m:
                null == temperature2m
                    ? _value.temperature2m
                    : temperature2m // ignore: cast_nullable_to_non_nullable
                        as String,
            relativeHumidity2m:
                null == relativeHumidity2m
                    ? _value.relativeHumidity2m
                    : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
                        as String,
            apparentTemperature:
                null == apparentTemperature
                    ? _value.apparentTemperature
                    : apparentTemperature // ignore: cast_nullable_to_non_nullable
                        as String,
            precipitationProbability:
                null == precipitationProbability
                    ? _value.precipitationProbability
                    : precipitationProbability // ignore: cast_nullable_to_non_nullable
                        as String,
            precipitation:
                null == precipitation
                    ? _value.precipitation
                    : precipitation // ignore: cast_nullable_to_non_nullable
                        as String,
            weatherCode:
                null == weatherCode
                    ? _value.weatherCode
                    : weatherCode // ignore: cast_nullable_to_non_nullable
                        as String,
            windSpeed10m:
                null == windSpeed10m
                    ? _value.windSpeed10m
                    : windSpeed10m // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HourlyUnitsImplCopyWith<$Res>
    implements $HourlyUnitsCopyWith<$Res> {
  factory _$$HourlyUnitsImplCopyWith(
    _$HourlyUnitsImpl value,
    $Res Function(_$HourlyUnitsImpl) then,
  ) = __$$HourlyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String time,
    @JsonKey(name: 'temperature_2m') String temperature2m,
    @JsonKey(name: 'relative_humidity_2m') String relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature') String apparentTemperature,
    @JsonKey(name: 'precipitation_probability') String precipitationProbability,
    String precipitation,
    @JsonKey(name: 'weather_code') String weatherCode,
    @JsonKey(name: 'wind_speed_10m') String windSpeed10m,
  });
}

/// @nodoc
class __$$HourlyUnitsImplCopyWithImpl<$Res>
    extends _$HourlyUnitsCopyWithImpl<$Res, _$HourlyUnitsImpl>
    implements _$$HourlyUnitsImplCopyWith<$Res> {
  __$$HourlyUnitsImplCopyWithImpl(
    _$HourlyUnitsImpl _value,
    $Res Function(_$HourlyUnitsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? windSpeed10m = null,
  }) {
    return _then(
      _$HourlyUnitsImpl(
        time:
            null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as String,
        temperature2m:
            null == temperature2m
                ? _value.temperature2m
                : temperature2m // ignore: cast_nullable_to_non_nullable
                    as String,
        relativeHumidity2m:
            null == relativeHumidity2m
                ? _value.relativeHumidity2m
                : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
                    as String,
        apparentTemperature:
            null == apparentTemperature
                ? _value.apparentTemperature
                : apparentTemperature // ignore: cast_nullable_to_non_nullable
                    as String,
        precipitationProbability:
            null == precipitationProbability
                ? _value.precipitationProbability
                : precipitationProbability // ignore: cast_nullable_to_non_nullable
                    as String,
        precipitation:
            null == precipitation
                ? _value.precipitation
                : precipitation // ignore: cast_nullable_to_non_nullable
                    as String,
        weatherCode:
            null == weatherCode
                ? _value.weatherCode
                : weatherCode // ignore: cast_nullable_to_non_nullable
                    as String,
        windSpeed10m:
            null == windSpeed10m
                ? _value.windSpeed10m
                : windSpeed10m // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyUnitsImpl implements _HourlyUnits {
  const _$HourlyUnitsImpl({
    required this.time,
    @JsonKey(name: 'temperature_2m') required this.temperature2m,
    @JsonKey(name: 'relative_humidity_2m') required this.relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature') required this.apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required this.precipitationProbability,
    required this.precipitation,
    @JsonKey(name: 'weather_code') required this.weatherCode,
    @JsonKey(name: 'wind_speed_10m') required this.windSpeed10m,
  });

  factory _$HourlyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyUnitsImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'temperature_2m')
  final String temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  final String relativeHumidity2m;
  @override
  @JsonKey(name: 'apparent_temperature')
  final String apparentTemperature;
  @override
  @JsonKey(name: 'precipitation_probability')
  final String precipitationProbability;
  @override
  final String precipitation;
  @override
  @JsonKey(name: 'weather_code')
  final String weatherCode;
  @override
  @JsonKey(name: 'wind_speed_10m')
  final String windSpeed10m;

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, apparentTemperature: $apparentTemperature, precipitationProbability: $precipitationProbability, precipitation: $precipitation, weatherCode: $weatherCode, windSpeed10m: $windSpeed10m)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2m, temperature2m) ||
                other.temperature2m == temperature2m) &&
            (identical(other.relativeHumidity2m, relativeHumidity2m) ||
                other.relativeHumidity2m == relativeHumidity2m) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(
                  other.precipitationProbability,
                  precipitationProbability,
                ) ||
                other.precipitationProbability == precipitationProbability) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.windSpeed10m, windSpeed10m) ||
                other.windSpeed10m == windSpeed10m));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    time,
    temperature2m,
    relativeHumidity2m,
    apparentTemperature,
    precipitationProbability,
    precipitation,
    weatherCode,
    windSpeed10m,
  );

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      __$$HourlyUnitsImplCopyWithImpl<_$HourlyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyUnitsImplToJson(this);
  }
}

abstract class _HourlyUnits implements HourlyUnits {
  const factory _HourlyUnits({
    required final String time,
    @JsonKey(name: 'temperature_2m') required final String temperature2m,
    @JsonKey(name: 'relative_humidity_2m')
    required final String relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature')
    required final String apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required final String precipitationProbability,
    required final String precipitation,
    @JsonKey(name: 'weather_code') required final String weatherCode,
    @JsonKey(name: 'wind_speed_10m') required final String windSpeed10m,
  }) = _$HourlyUnitsImpl;

  factory _HourlyUnits.fromJson(Map<String, dynamic> json) =
      _$HourlyUnitsImpl.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'temperature_2m')
  String get temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  String get relativeHumidity2m;
  @override
  @JsonKey(name: 'apparent_temperature')
  String get apparentTemperature;
  @override
  @JsonKey(name: 'precipitation_probability')
  String get precipitationProbability;
  @override
  String get precipitation;
  @override
  @JsonKey(name: 'weather_code')
  String get weatherCode;
  @override
  @JsonKey(name: 'wind_speed_10m')
  String get windSpeed10m;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) {
  return _DailyWeather.fromJson(json);
}

/// @nodoc
mixin _$DailyWeather {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2mMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2mMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  List<String> get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  List<String> get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_sum')
  List<double> get precipitationSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m_max')
  List<double> get windSpeed10mMax => throw _privateConstructorUsedError;

  /// Serializes this DailyWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyWeatherCopyWith<DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherCopyWith<$Res> {
  factory $DailyWeatherCopyWith(
    DailyWeather value,
    $Res Function(DailyWeather) then,
  ) = _$DailyWeatherCopyWithImpl<$Res, DailyWeather>;
  @useResult
  $Res call({
    List<String> time,
    @JsonKey(name: 'weather_code') List<int> weatherCode,
    @JsonKey(name: 'temperature_2m_max') List<double> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') List<double> temperature2mMin,
    @JsonKey(name: 'sunrise') List<String> sunrise,
    @JsonKey(name: 'sunset') List<String> sunset,
    @JsonKey(name: 'precipitation_sum') List<double> precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    List<int> precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') List<double> windSpeed10mMax,
  });
}

/// @nodoc
class _$DailyWeatherCopyWithImpl<$Res, $Val extends DailyWeather>
    implements $DailyWeatherCopyWith<$Res> {
  _$DailyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitationSum = null,
    Object? precipitationProbabilityMax = null,
    Object? windSpeed10mMax = null,
  }) {
    return _then(
      _value.copyWith(
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            weatherCode:
                null == weatherCode
                    ? _value.weatherCode
                    : weatherCode // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            temperature2mMax:
                null == temperature2mMax
                    ? _value.temperature2mMax
                    : temperature2mMax // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            temperature2mMin:
                null == temperature2mMin
                    ? _value.temperature2mMin
                    : temperature2mMin // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            sunrise:
                null == sunrise
                    ? _value.sunrise
                    : sunrise // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            sunset:
                null == sunset
                    ? _value.sunset
                    : sunset // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            precipitationSum:
                null == precipitationSum
                    ? _value.precipitationSum
                    : precipitationSum // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            precipitationProbabilityMax:
                null == precipitationProbabilityMax
                    ? _value.precipitationProbabilityMax
                    : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            windSpeed10mMax:
                null == windSpeed10mMax
                    ? _value.windSpeed10mMax
                    : windSpeed10mMax // ignore: cast_nullable_to_non_nullable
                        as List<double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyWeatherImplCopyWith<$Res>
    implements $DailyWeatherCopyWith<$Res> {
  factory _$$DailyWeatherImplCopyWith(
    _$DailyWeatherImpl value,
    $Res Function(_$DailyWeatherImpl) then,
  ) = __$$DailyWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> time,
    @JsonKey(name: 'weather_code') List<int> weatherCode,
    @JsonKey(name: 'temperature_2m_max') List<double> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') List<double> temperature2mMin,
    @JsonKey(name: 'sunrise') List<String> sunrise,
    @JsonKey(name: 'sunset') List<String> sunset,
    @JsonKey(name: 'precipitation_sum') List<double> precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    List<int> precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') List<double> windSpeed10mMax,
  });
}

/// @nodoc
class __$$DailyWeatherImplCopyWithImpl<$Res>
    extends _$DailyWeatherCopyWithImpl<$Res, _$DailyWeatherImpl>
    implements _$$DailyWeatherImplCopyWith<$Res> {
  __$$DailyWeatherImplCopyWithImpl(
    _$DailyWeatherImpl _value,
    $Res Function(_$DailyWeatherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitationSum = null,
    Object? precipitationProbabilityMax = null,
    Object? windSpeed10mMax = null,
  }) {
    return _then(
      _$DailyWeatherImpl(
        time:
            null == time
                ? _value._time
                : time // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        weatherCode:
            null == weatherCode
                ? _value._weatherCode
                : weatherCode // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        temperature2mMax:
            null == temperature2mMax
                ? _value._temperature2mMax
                : temperature2mMax // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        temperature2mMin:
            null == temperature2mMin
                ? _value._temperature2mMin
                : temperature2mMin // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        sunrise:
            null == sunrise
                ? _value._sunrise
                : sunrise // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        sunset:
            null == sunset
                ? _value._sunset
                : sunset // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        precipitationSum:
            null == precipitationSum
                ? _value._precipitationSum
                : precipitationSum // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        precipitationProbabilityMax:
            null == precipitationProbabilityMax
                ? _value._precipitationProbabilityMax
                : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        windSpeed10mMax:
            null == windSpeed10mMax
                ? _value._windSpeed10mMax
                : windSpeed10mMax // ignore: cast_nullable_to_non_nullable
                    as List<double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyWeatherImpl implements _DailyWeather {
  const _$DailyWeatherImpl({
    required final List<String> time,
    @JsonKey(name: 'weather_code') required final List<int> weatherCode,
    @JsonKey(name: 'temperature_2m_max')
    required final List<double> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min')
    required final List<double> temperature2mMin,
    @JsonKey(name: 'sunrise') required final List<String> sunrise,
    @JsonKey(name: 'sunset') required final List<String> sunset,
    @JsonKey(name: 'precipitation_sum')
    required final List<double> precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    required final List<int> precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max')
    required final List<double> windSpeed10mMax,
  }) : _time = time,
       _weatherCode = weatherCode,
       _temperature2mMax = temperature2mMax,
       _temperature2mMin = temperature2mMin,
       _sunrise = sunrise,
       _sunset = sunset,
       _precipitationSum = precipitationSum,
       _precipitationProbabilityMax = precipitationProbabilityMax,
       _windSpeed10mMax = windSpeed10mMax;

  factory _$DailyWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyWeatherImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<double> _temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2mMax {
    if (_temperature2mMax is EqualUnmodifiableListView)
      return _temperature2mMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2mMax);
  }

  final List<double> _temperature2mMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2mMin {
    if (_temperature2mMin is EqualUnmodifiableListView)
      return _temperature2mMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2mMin);
  }

  final List<String> _sunrise;
  @override
  @JsonKey(name: 'sunrise')
  List<String> get sunrise {
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunrise);
  }

  final List<String> _sunset;
  @override
  @JsonKey(name: 'sunset')
  List<String> get sunset {
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunset);
  }

  final List<double> _precipitationSum;
  @override
  @JsonKey(name: 'precipitation_sum')
  List<double> get precipitationSum {
    if (_precipitationSum is EqualUnmodifiableListView)
      return _precipitationSum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationSum);
  }

  final List<int> _precipitationProbabilityMax;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax {
    if (_precipitationProbabilityMax is EqualUnmodifiableListView)
      return _precipitationProbabilityMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbabilityMax);
  }

  final List<double> _windSpeed10mMax;
  @override
  @JsonKey(name: 'wind_speed_10m_max')
  List<double> get windSpeed10mMax {
    if (_windSpeed10mMax is EqualUnmodifiableListView) return _windSpeed10mMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed10mMax);
  }

  @override
  String toString() {
    return 'DailyWeather(time: $time, weatherCode: $weatherCode, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, sunrise: $sunrise, sunset: $sunset, precipitationSum: $precipitationSum, precipitationProbabilityMax: $precipitationProbabilityMax, windSpeed10mMax: $windSpeed10mMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWeatherImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality().equals(
              other._weatherCode,
              _weatherCode,
            ) &&
            const DeepCollectionEquality().equals(
              other._temperature2mMax,
              _temperature2mMax,
            ) &&
            const DeepCollectionEquality().equals(
              other._temperature2mMin,
              _temperature2mMin,
            ) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset) &&
            const DeepCollectionEquality().equals(
              other._precipitationSum,
              _precipitationSum,
            ) &&
            const DeepCollectionEquality().equals(
              other._precipitationProbabilityMax,
              _precipitationProbabilityMax,
            ) &&
            const DeepCollectionEquality().equals(
              other._windSpeed10mMax,
              _windSpeed10mMax,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_time),
    const DeepCollectionEquality().hash(_weatherCode),
    const DeepCollectionEquality().hash(_temperature2mMax),
    const DeepCollectionEquality().hash(_temperature2mMin),
    const DeepCollectionEquality().hash(_sunrise),
    const DeepCollectionEquality().hash(_sunset),
    const DeepCollectionEquality().hash(_precipitationSum),
    const DeepCollectionEquality().hash(_precipitationProbabilityMax),
    const DeepCollectionEquality().hash(_windSpeed10mMax),
  );

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWeatherImplCopyWith<_$DailyWeatherImpl> get copyWith =>
      __$$DailyWeatherImplCopyWithImpl<_$DailyWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyWeatherImplToJson(this);
  }
}

abstract class _DailyWeather implements DailyWeather {
  const factory _DailyWeather({
    required final List<String> time,
    @JsonKey(name: 'weather_code') required final List<int> weatherCode,
    @JsonKey(name: 'temperature_2m_max')
    required final List<double> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min')
    required final List<double> temperature2mMin,
    @JsonKey(name: 'sunrise') required final List<String> sunrise,
    @JsonKey(name: 'sunset') required final List<String> sunset,
    @JsonKey(name: 'precipitation_sum')
    required final List<double> precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    required final List<int> precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max')
    required final List<double> windSpeed10mMax,
  }) = _$DailyWeatherImpl;

  factory _DailyWeather.fromJson(Map<String, dynamic> json) =
      _$DailyWeatherImpl.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2mMin;
  @override
  @JsonKey(name: 'sunrise')
  List<String> get sunrise;
  @override
  @JsonKey(name: 'sunset')
  List<String> get sunset;
  @override
  @JsonKey(name: 'precipitation_sum')
  List<double> get precipitationSum;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax;
  @override
  @JsonKey(name: 'wind_speed_10m_max')
  List<double> get windSpeed10mMax;

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyWeatherImplCopyWith<_$DailyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) {
  return _DailyUnits.fromJson(json);
}

/// @nodoc
mixin _$DailyUnits {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  String get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  String get temperature2mMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  String get temperature2mMin => throw _privateConstructorUsedError;
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_sum')
  String get precipitationSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability_max')
  String get precipitationProbabilityMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m_max')
  String get windSpeed10mMax => throw _privateConstructorUsedError;

  /// Serializes this DailyUnits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyUnitsCopyWith<DailyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyUnitsCopyWith<$Res> {
  factory $DailyUnitsCopyWith(
    DailyUnits value,
    $Res Function(DailyUnits) then,
  ) = _$DailyUnitsCopyWithImpl<$Res, DailyUnits>;
  @useResult
  $Res call({
    String time,
    @JsonKey(name: 'weather_code') String weatherCode,
    @JsonKey(name: 'temperature_2m_max') String temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') String temperature2mMin,
    String sunrise,
    String sunset,
    @JsonKey(name: 'precipitation_sum') String precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    String precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') String windSpeed10mMax,
  });
}

/// @nodoc
class _$DailyUnitsCopyWithImpl<$Res, $Val extends DailyUnits>
    implements $DailyUnitsCopyWith<$Res> {
  _$DailyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitationSum = null,
    Object? precipitationProbabilityMax = null,
    Object? windSpeed10mMax = null,
  }) {
    return _then(
      _value.copyWith(
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as String,
            weatherCode:
                null == weatherCode
                    ? _value.weatherCode
                    : weatherCode // ignore: cast_nullable_to_non_nullable
                        as String,
            temperature2mMax:
                null == temperature2mMax
                    ? _value.temperature2mMax
                    : temperature2mMax // ignore: cast_nullable_to_non_nullable
                        as String,
            temperature2mMin:
                null == temperature2mMin
                    ? _value.temperature2mMin
                    : temperature2mMin // ignore: cast_nullable_to_non_nullable
                        as String,
            sunrise:
                null == sunrise
                    ? _value.sunrise
                    : sunrise // ignore: cast_nullable_to_non_nullable
                        as String,
            sunset:
                null == sunset
                    ? _value.sunset
                    : sunset // ignore: cast_nullable_to_non_nullable
                        as String,
            precipitationSum:
                null == precipitationSum
                    ? _value.precipitationSum
                    : precipitationSum // ignore: cast_nullable_to_non_nullable
                        as String,
            precipitationProbabilityMax:
                null == precipitationProbabilityMax
                    ? _value.precipitationProbabilityMax
                    : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
                        as String,
            windSpeed10mMax:
                null == windSpeed10mMax
                    ? _value.windSpeed10mMax
                    : windSpeed10mMax // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyUnitsImplCopyWith<$Res>
    implements $DailyUnitsCopyWith<$Res> {
  factory _$$DailyUnitsImplCopyWith(
    _$DailyUnitsImpl value,
    $Res Function(_$DailyUnitsImpl) then,
  ) = __$$DailyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String time,
    @JsonKey(name: 'weather_code') String weatherCode,
    @JsonKey(name: 'temperature_2m_max') String temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') String temperature2mMin,
    String sunrise,
    String sunset,
    @JsonKey(name: 'precipitation_sum') String precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    String precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') String windSpeed10mMax,
  });
}

/// @nodoc
class __$$DailyUnitsImplCopyWithImpl<$Res>
    extends _$DailyUnitsCopyWithImpl<$Res, _$DailyUnitsImpl>
    implements _$$DailyUnitsImplCopyWith<$Res> {
  __$$DailyUnitsImplCopyWithImpl(
    _$DailyUnitsImpl _value,
    $Res Function(_$DailyUnitsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitationSum = null,
    Object? precipitationProbabilityMax = null,
    Object? windSpeed10mMax = null,
  }) {
    return _then(
      _$DailyUnitsImpl(
        time:
            null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as String,
        weatherCode:
            null == weatherCode
                ? _value.weatherCode
                : weatherCode // ignore: cast_nullable_to_non_nullable
                    as String,
        temperature2mMax:
            null == temperature2mMax
                ? _value.temperature2mMax
                : temperature2mMax // ignore: cast_nullable_to_non_nullable
                    as String,
        temperature2mMin:
            null == temperature2mMin
                ? _value.temperature2mMin
                : temperature2mMin // ignore: cast_nullable_to_non_nullable
                    as String,
        sunrise:
            null == sunrise
                ? _value.sunrise
                : sunrise // ignore: cast_nullable_to_non_nullable
                    as String,
        sunset:
            null == sunset
                ? _value.sunset
                : sunset // ignore: cast_nullable_to_non_nullable
                    as String,
        precipitationSum:
            null == precipitationSum
                ? _value.precipitationSum
                : precipitationSum // ignore: cast_nullable_to_non_nullable
                    as String,
        precipitationProbabilityMax:
            null == precipitationProbabilityMax
                ? _value.precipitationProbabilityMax
                : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
                    as String,
        windSpeed10mMax:
            null == windSpeed10mMax
                ? _value.windSpeed10mMax
                : windSpeed10mMax // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyUnitsImpl implements _DailyUnits {
  const _$DailyUnitsImpl({
    required this.time,
    @JsonKey(name: 'weather_code') required this.weatherCode,
    @JsonKey(name: 'temperature_2m_max') required this.temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required this.temperature2mMin,
    required this.sunrise,
    required this.sunset,
    @JsonKey(name: 'precipitation_sum') required this.precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    required this.precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') required this.windSpeed10mMax,
  });

  factory _$DailyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyUnitsImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'weather_code')
  final String weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  final String temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  final String temperature2mMin;
  @override
  final String sunrise;
  @override
  final String sunset;
  @override
  @JsonKey(name: 'precipitation_sum')
  final String precipitationSum;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  final String precipitationProbabilityMax;
  @override
  @JsonKey(name: 'wind_speed_10m_max')
  final String windSpeed10mMax;

  @override
  String toString() {
    return 'DailyUnits(time: $time, weatherCode: $weatherCode, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, sunrise: $sunrise, sunset: $sunset, precipitationSum: $precipitationSum, precipitationProbabilityMax: $precipitationProbabilityMax, windSpeed10mMax: $windSpeed10mMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.temperature2mMax, temperature2mMax) ||
                other.temperature2mMax == temperature2mMax) &&
            (identical(other.temperature2mMin, temperature2mMin) ||
                other.temperature2mMin == temperature2mMin) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.precipitationSum, precipitationSum) ||
                other.precipitationSum == precipitationSum) &&
            (identical(
                  other.precipitationProbabilityMax,
                  precipitationProbabilityMax,
                ) ||
                other.precipitationProbabilityMax ==
                    precipitationProbabilityMax) &&
            (identical(other.windSpeed10mMax, windSpeed10mMax) ||
                other.windSpeed10mMax == windSpeed10mMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    time,
    weatherCode,
    temperature2mMax,
    temperature2mMin,
    sunrise,
    sunset,
    precipitationSum,
    precipitationProbabilityMax,
    windSpeed10mMax,
  );

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      __$$DailyUnitsImplCopyWithImpl<_$DailyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyUnitsImplToJson(this);
  }
}

abstract class _DailyUnits implements DailyUnits {
  const factory _DailyUnits({
    required final String time,
    @JsonKey(name: 'weather_code') required final String weatherCode,
    @JsonKey(name: 'temperature_2m_max') required final String temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required final String temperature2mMin,
    required final String sunrise,
    required final String sunset,
    @JsonKey(name: 'precipitation_sum') required final String precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    required final String precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') required final String windSpeed10mMax,
  }) = _$DailyUnitsImpl;

  factory _DailyUnits.fromJson(Map<String, dynamic> json) =
      _$DailyUnitsImpl.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'weather_code')
  String get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  String get temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  String get temperature2mMin;
  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  @JsonKey(name: 'precipitation_sum')
  String get precipitationSum;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  String get precipitationProbabilityMax;
  @override
  @JsonKey(name: 'wind_speed_10m_max')
  String get windSpeed10mMax;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
