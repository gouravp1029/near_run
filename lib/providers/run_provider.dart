import 'package:flutter/material.dart';

class RunProvider extends ChangeNotifier {
  bool _isRunning = false;
  Duration _duration = Duration.zero;
  double _distance = 0.0;
  double _calories = 0;
  int _steps = 0;

  bool get isRunning => _isRunning;
  Duration get duration => _duration;
  double get distance => _distance;
  double get calories => _calories;
  int get steps => _steps;

  void startRun() {
    _isRunning = true;
    notifyListeners();
  }

  void stopRun() {
    _isRunning = false;
    notifyListeners();
  }

  void updateRunData(Duration duration, double distance, double calories, int steps) {
    _duration = duration;
    _distance = distance;
    _calories = calories;
    _steps = steps;
    notifyListeners();
  }

  void reset() {
    _duration = Duration.zero;
    _distance = 0.0;
    _calories = 0;
    _steps = 0;
    notifyListeners();
  }
}