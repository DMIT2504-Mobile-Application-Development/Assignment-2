import 'package:flutter/material.dart';

import 'models/current_weather.dart';
// TODO: you can replace the following function with your own that makes use of your
//       OpenWeather library API and CurrentWeather class from assignment 1

// A private function, with mock interface for an actual weather provider,
// that returns a CurrentWeather object for the app.
Future<CurrentWeather> _currentWeatherProvider(
    {String city = 'Edmonton'}) async {
  return CurrentWeather(
    city: 'Edmonton',
    description: 'partly cloudy',
    currentTemp: 24.5,
    currentTime: DateTime.parse('2024-08-01 12:00:00'),
    sunrise: DateTime.parse('2024-08-01 06:00:00'),
    sunset: DateTime.parse('2024-08-01 18:30:00'),
  );
  ;
}

void main() {
  runApp(const MainApp(
    provider: _currentWeatherProvider,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({required this.provider, super.key});

  // Use the `provider` here as your argument to the CurrentWeatherView widget's `weatherProvider` named parameter
  final Future<CurrentWeather> Function({required String city}) provider;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text('Replace me with your CurrentWeatherView widget'),
      ),
    );
  }
}
