import 'package:app/samples/weather/models/weather_models.dart';

class DailyForecast {
  final DateTime date;
  final int weatherCode;
  final double maxTemperature;
  final double minTemperature;
  final double precipitationSum;
  final int precipitationProbability;
  final DateTime sunrise;
  final DateTime sunset;

  const DailyForecast({
    required this.date,
    required this.weatherCode,
    required this.maxTemperature,
    required this.minTemperature,
    required this.precipitationSum,
    required this.precipitationProbability,
    required this.sunrise,
    required this.sunset,
  });

  String get weatherDescription => weatherCode.description;
  String get weatherIcon => weatherCode.iconName;
}
