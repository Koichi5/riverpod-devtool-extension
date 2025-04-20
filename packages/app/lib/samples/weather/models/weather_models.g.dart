// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseImpl _$$WeatherResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WeatherResponseImpl(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  elevation: (json['elevation'] as num).toDouble(),
  generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
  utcOffsetSeconds: (json['utc_offset_seconds'] as num).toInt(),
  timezone: json['timezone'] as String,
  timezoneAbbreviation: json['timezone_abbreviation'] as String,
  hourly: HourlyWeather.fromJson(json['hourly'] as Map<String, dynamic>),
  hourlyUnits: HourlyUnits.fromJson(
    json['hourly_units'] as Map<String, dynamic>,
  ),
  daily: DailyWeather.fromJson(json['daily'] as Map<String, dynamic>),
  dailyUnits: DailyUnits.fromJson(json['daily_units'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$WeatherResponseImplToJson(
  _$WeatherResponseImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'elevation': instance.elevation,
  'generationtime_ms': instance.generationtimeMs,
  'utc_offset_seconds': instance.utcOffsetSeconds,
  'timezone': instance.timezone,
  'timezone_abbreviation': instance.timezoneAbbreviation,
  'hourly': instance.hourly,
  'hourly_units': instance.hourlyUnits,
  'daily': instance.daily,
  'daily_units': instance.dailyUnits,
};

_$HourlyWeatherImpl _$$HourlyWeatherImplFromJson(Map<String, dynamic> json) =>
    _$HourlyWeatherImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2m:
          (json['temperature_2m'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      relativeHumidity2m:
          (json['relative_humidity_2m'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      apparentTemperature:
          (json['apparent_temperature'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      precipitation:
          (json['precipitation'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      weatherCode:
          (json['weather_code'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      windSpeed10m:
          (json['wind_speed_10m'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
    );

Map<String, dynamic> _$$HourlyWeatherImplToJson(_$HourlyWeatherImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'apparent_temperature': instance.apparentTemperature,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
    };

_$HourlyUnitsImpl _$$HourlyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$HourlyUnitsImpl(
      time: json['time'] as String,
      temperature2m: json['temperature_2m'] as String,
      relativeHumidity2m: json['relative_humidity_2m'] as String,
      apparentTemperature: json['apparent_temperature'] as String,
      precipitationProbability: json['precipitation_probability'] as String,
      precipitation: json['precipitation'] as String,
      weatherCode: json['weather_code'] as String,
      windSpeed10m: json['wind_speed_10m'] as String,
    );

Map<String, dynamic> _$$HourlyUnitsImplToJson(_$HourlyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'apparent_temperature': instance.apparentTemperature,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
    };

_$DailyWeatherImpl _$$DailyWeatherImplFromJson(
  Map<String, dynamic> json,
) => _$DailyWeatherImpl(
  time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
  weatherCode:
      (json['weather_code'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  temperature2mMax:
      (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
  temperature2mMin:
      (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
  sunrise: (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
  sunset: (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
  precipitationSum:
      (json['precipitation_sum'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
  precipitationProbabilityMax:
      (json['precipitation_probability_max'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  windSpeed10mMax:
      (json['wind_speed_10m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
);

Map<String, dynamic> _$$DailyWeatherImplToJson(_$DailyWeatherImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'precipitation_sum': instance.precipitationSum,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
      'wind_speed_10m_max': instance.windSpeed10mMax,
    };

_$DailyUnitsImpl _$$DailyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$DailyUnitsImpl(
      time: json['time'] as String,
      weatherCode: json['weather_code'] as String,
      temperature2mMax: json['temperature_2m_max'] as String,
      temperature2mMin: json['temperature_2m_min'] as String,
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      precipitationSum: json['precipitation_sum'] as String,
      precipitationProbabilityMax:
          json['precipitation_probability_max'] as String,
      windSpeed10mMax: json['wind_speed_10m_max'] as String,
    );

Map<String, dynamic> _$$DailyUnitsImplToJson(_$DailyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'precipitation_sum': instance.precipitationSum,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
      'wind_speed_10m_max': instance.windSpeed10mMax,
    };
