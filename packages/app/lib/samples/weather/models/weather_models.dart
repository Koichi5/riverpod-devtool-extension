// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_models.freezed.dart';
part 'weather_models.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required double latitude,
    required double longitude,
    required double elevation,
    @JsonKey(name: 'generationtime_ms') required double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    required String timezone,
    @JsonKey(name: 'timezone_abbreviation')
    required String timezoneAbbreviation,
    required HourlyWeather hourly,
    @JsonKey(name: 'hourly_units') required HourlyUnits hourlyUnits,
    required DailyWeather daily,
    @JsonKey(name: 'daily_units') required DailyUnits dailyUnits,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature2m,
    @JsonKey(name: 'relative_humidity_2m')
    required List<int> relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature')
    required List<double> apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required List<int> precipitationProbability,
    required List<double> precipitation,
    @JsonKey(name: 'weather_code') required List<int> weatherCode,
    @JsonKey(name: 'wind_speed_10m') required List<double> windSpeed10m,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
}

@freezed
class HourlyUnits with _$HourlyUnits {
  const factory HourlyUnits({
    required String time,
    @JsonKey(name: 'temperature_2m') required String temperature2m,
    @JsonKey(name: 'relative_humidity_2m') required String relativeHumidity2m,
    @JsonKey(name: 'apparent_temperature') required String apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required String precipitationProbability,
    required String precipitation,
    @JsonKey(name: 'weather_code') required String weatherCode,
    @JsonKey(name: 'wind_speed_10m') required String windSpeed10m,
  }) = _HourlyUnits;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);
}

@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    required List<String> time,
    @JsonKey(name: 'weather_code') required List<int> weatherCode,
    @JsonKey(name: 'temperature_2m_max') required List<double> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required List<double> temperature2mMin,
    @JsonKey(name: 'sunrise') required List<String> sunrise,
    @JsonKey(name: 'sunset') required List<String> sunset,
    @JsonKey(name: 'precipitation_sum') required List<double> precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    required List<int> precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') required List<double> windSpeed10mMax,
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);
}

@freezed
class DailyUnits with _$DailyUnits {
  const factory DailyUnits({
    required String time,
    @JsonKey(name: 'weather_code') required String weatherCode,
    @JsonKey(name: 'temperature_2m_max') required String temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required String temperature2mMin,
    required String sunrise,
    required String sunset,
    @JsonKey(name: 'precipitation_sum') required String precipitationSum,
    @JsonKey(name: 'precipitation_probability_max')
    required String precipitationProbabilityMax,
    @JsonKey(name: 'wind_speed_10m_max') required String windSpeed10mMax,
  }) = _DailyUnits;

  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);
}

// 天気コードの解釈を助けるための拡張機能
extension WeatherCodeHelper on int {
  String get description {
    switch (this) {
      case 0:
        return '快晴';
      case 1:
        return '晴れ';
      case 2:
        return '一部曇り';
      case 3:
        return '曇り';
      case 45:
      case 48:
        return '霧';
      case 51:
      case 53:
      case 55:
        return '霧雨';
      case 56:
      case 57:
        return '着氷性の霧雨';
      case 61:
      case 63:
      case 65:
        return '雨';
      case 66:
      case 67:
        return '着氷性の雨';
      case 71:
      case 73:
      case 75:
        return '雪';
      case 77:
        return '霧雪';
      case 80:
      case 81:
      case 82:
        return 'にわか雨';
      case 85:
      case 86:
        return 'にわか雪';
      case 95:
        return '雷雨';
      case 96:
      case 99:
        return '雹を伴う雷雨';
      default:
        return '不明';
    }
  }

  String get iconName {
    switch (this) {
      case 0:
        return 'clear';
      case 1:
        return 'clear';
      case 2:
        return 'partly_cloudy';
      case 3:
        return 'cloudy';
      case 45:
      case 48:
        return 'fog';
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
        return 'drizzle';
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
        return 'rain';
      case 71:
      case 73:
      case 75:
      case 77:
        return 'snow';
      case 80:
      case 81:
      case 82:
        return 'rain_shower';
      case 85:
      case 86:
        return 'snow_shower';
      case 95:
      case 96:
      case 99:
        return 'thunderstorm';
      default:
        return 'unknown';
    }
  }
}
