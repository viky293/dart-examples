import '../interface/Engine.dart';

class Diesel implements Engine {
  bool ignition = false;
  final fuelType = 'diesel';
  @override
  getEngineInfo() {
    return {'fuelType': fuelType, 'state': ignition ? "running" : "stopped"};
  }

  @override
  start() {
    ignition = true;
  }

  @override
  stop() {
    ignition = false;
  }

  @override
  bool isStart() {
    return ignition;
  }
}
