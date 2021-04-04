import '../interface/Engine.dart';

class Petrol implements Engine {
  bool ignition = false;
  final fuelType = 'petrol';
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
