import '../interface/ElectricDrive.dart';
import '../interface/Engine.dart';

class EvEngineAdapert implements Engine {
  ElectricDrive adaptFrom;
  EvEngineAdapert(this.adaptFrom);
  @override
  getEngineInfo() {
    return {
      'fuelType': adaptFrom.displayInfo()['fuelType'],
      'state': isStart() ? "running" : "stopped"
    };
  }

  @override
  bool isStart() {
    if (adaptFrom.displayInfo()['mode'] == 'neutral') {
      return false;
    }
    return adaptFrom.displayInfo()['mode'] == 'drive' ||
        adaptFrom.displayInfo()['mode'] == 'reverse';
  }

  @override
  start() {
    while (adaptFrom.displayInfo()['mode'] != 'drive') {
      adaptFrom.setMode();
    }
  }

  @override
  stop() {
    while (adaptFrom.displayInfo()['mode'] != 'neutral') {
      adaptFrom.setMode();
    }
  }
}
