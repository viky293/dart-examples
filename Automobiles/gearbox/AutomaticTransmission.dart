import '../interface/Gearbox.dart';

class AutomaticTransmission implements Gearbox {
  final int totalGears;
  final type = "automatic";
  double shiftRatio = 0;
  int currentGear = 0;
  List<String> validModes = ["neutral", "drive", "reverse"];
  String mode = 'neutral';
  AutomaticTransmission(this.totalGears) {
    shiftRatio = 200 / totalGears;
  }

  @override
  getGearboxInfo() {
    return {
      "currentGear": currentGear,
      "mode": mode,
      "type": type,
      "totalGears": totalGears
    };
  }

  @override
  setMode(String mode, double speed) {
    //Automatic needs to be explicityl put in reverse mode, shift downs wont' help.
    if (mode == 'reverse' && speed == 0) {
      currentGear = -1;
      _detectMode();
      return;
    }
    print('Vehicle not stationary!');
  }

  _detectMode() {
    switch (currentGear) {
      case 0:
        mode = validModes[0];
        break;
      case -1: // Let -1 represent the reverse gear
        mode = validModes[2];
        break;
      default:
        mode = validModes[1];
    }
  }

  _selectGear(double speed) {
    if (speed == 0) {
      currentGear = 0;
      return;
    }
    if (speed < shiftRatio) {
      currentGear = 1;
      return;
    }
    currentGear = (speed / shiftRatio).round();
  }

  @override
  shiftDown(double speed) {
    //Auto shift uses current speed to select gears.
    _selectGear(speed);
    _detectMode();
  }

  @override
  shiftUp(double speed) {
    //Auto shift uses current speed to select gears.
    _selectGear(speed);
    _detectMode();
  }
}
