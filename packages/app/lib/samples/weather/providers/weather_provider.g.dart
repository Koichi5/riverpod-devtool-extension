// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherServiceHash() => r'56e02b5821ca84057d36c5bf3e0943bb68bfb3cf';

/// See also [weatherService].
@ProviderFor(weatherService)
final weatherServiceProvider = Provider<WeatherService>.internal(
  weatherService,
  name: r'weatherServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weatherServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeatherServiceRef = ProviderRef<WeatherService>;
String _$tokyoWeatherHash() => r'0e91a904346996e9176070f3de8cebdb082da7c6';

/// See also [tokyoWeather].
@ProviderFor(tokyoWeather)
final tokyoWeatherProvider =
    AutoDisposeFutureProvider<WeatherResponse>.internal(
      tokyoWeather,
      name: r'tokyoWeatherProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$tokyoWeatherHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TokyoWeatherRef = AutoDisposeFutureProviderRef<WeatherResponse>;
String _$locationWeatherHash() => r'03c77bab01afe1a55fcd9961f7a7a2d12d6983bb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [locationWeather].
@ProviderFor(locationWeather)
const locationWeatherProvider = LocationWeatherFamily();

/// See also [locationWeather].
class LocationWeatherFamily extends Family<AsyncValue<WeatherResponse>> {
  /// See also [locationWeather].
  const LocationWeatherFamily();

  /// See also [locationWeather].
  LocationWeatherProvider call({
    required double latitude,
    required double longitude,
    String? timezone,
  }) {
    return LocationWeatherProvider(
      latitude: latitude,
      longitude: longitude,
      timezone: timezone,
    );
  }

  @override
  LocationWeatherProvider getProviderOverride(
    covariant LocationWeatherProvider provider,
  ) {
    return call(
      latitude: provider.latitude,
      longitude: provider.longitude,
      timezone: provider.timezone,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'locationWeatherProvider';
}

/// See also [locationWeather].
class LocationWeatherProvider
    extends AutoDisposeFutureProvider<WeatherResponse> {
  /// See also [locationWeather].
  LocationWeatherProvider({
    required double latitude,
    required double longitude,
    String? timezone,
  }) : this._internal(
         (ref) => locationWeather(
           ref as LocationWeatherRef,
           latitude: latitude,
           longitude: longitude,
           timezone: timezone,
         ),
         from: locationWeatherProvider,
         name: r'locationWeatherProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$locationWeatherHash,
         dependencies: LocationWeatherFamily._dependencies,
         allTransitiveDependencies:
             LocationWeatherFamily._allTransitiveDependencies,
         latitude: latitude,
         longitude: longitude,
         timezone: timezone,
       );

  LocationWeatherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latitude,
    required this.longitude,
    required this.timezone,
  }) : super.internal();

  final double latitude;
  final double longitude;
  final String? timezone;

  @override
  Override overrideWith(
    FutureOr<WeatherResponse> Function(LocationWeatherRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocationWeatherProvider._internal(
        (ref) => create(ref as LocationWeatherRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latitude: latitude,
        longitude: longitude,
        timezone: timezone,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WeatherResponse> createElement() {
    return _LocationWeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationWeatherProvider &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.timezone == timezone;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latitude.hashCode);
    hash = _SystemHash.combine(hash, longitude.hashCode);
    hash = _SystemHash.combine(hash, timezone.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LocationWeatherRef on AutoDisposeFutureProviderRef<WeatherResponse> {
  /// The parameter `latitude` of this provider.
  double get latitude;

  /// The parameter `longitude` of this provider.
  double get longitude;

  /// The parameter `timezone` of this provider.
  String? get timezone;
}

class _LocationWeatherProviderElement
    extends AutoDisposeFutureProviderElement<WeatherResponse>
    with LocationWeatherRef {
  _LocationWeatherProviderElement(super.provider);

  @override
  double get latitude => (origin as LocationWeatherProvider).latitude;
  @override
  double get longitude => (origin as LocationWeatherProvider).longitude;
  @override
  String? get timezone => (origin as LocationWeatherProvider).timezone;
}

String _$currentTemperatureHash() =>
    r'f4efbb0e36683345dc22f4f0d77dd74215ebc2a8';

/// See also [currentTemperature].
@ProviderFor(currentTemperature)
final currentTemperatureProvider = AutoDisposeFutureProvider<double>.internal(
  currentTemperature,
  name: r'currentTemperatureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentTemperatureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentTemperatureRef = AutoDisposeFutureProviderRef<double>;
String _$todayWeatherCodeHash() => r'72159f920451854a50af0638bf72760f5234768f';

/// See also [todayWeatherCode].
@ProviderFor(todayWeatherCode)
final todayWeatherCodeProvider = AutoDisposeFutureProvider<int>.internal(
  todayWeatherCode,
  name: r'todayWeatherCodeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$todayWeatherCodeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodayWeatherCodeRef = AutoDisposeFutureProviderRef<int>;
String _$weeklyForecastHash() => r'0c806ef346089cd5a0b0405e01f520cb104eb8ca';

/// See also [weeklyForecast].
@ProviderFor(weeklyForecast)
final weeklyForecastProvider =
    AutoDisposeFutureProvider<List<DailyForecast>>.internal(
      weeklyForecast,
      name: r'weeklyForecastProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$weeklyForecastHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeeklyForecastRef = AutoDisposeFutureProviderRef<List<DailyForecast>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
