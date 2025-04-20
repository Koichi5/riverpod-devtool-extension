import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_models.dart';

/// Open Meteo APIを使用して天気情報を取得するサービスクラス
class WeatherService {
  static const String _baseUrl = 'https://api.open-meteo.com/v1/forecast';

  /// 指定された緯度・経度の場所の天気情報を取得します
  Future<WeatherResponse> getWeather({
    required double latitude,
    required double longitude,
    String? timezone,
  }) async {
    final queryParams = {
      'latitude': latitude.toString(),
      'longitude': longitude.toString(),
      'timezone': timezone ?? 'Asia/Tokyo',
      'hourly':
          'temperature_2m,relative_humidity_2m,apparent_temperature,precipitation_probability,precipitation,weather_code,wind_speed_10m',
      'daily':
          'weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset,precipitation_sum,precipitation_probability_max,wind_speed_10m_max',
    };

    final uri = Uri.parse(_baseUrl).replace(queryParameters: queryParams);

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return WeatherResponse.fromJson(data);
      } else {
        throw Exception('Failed to load weather data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
