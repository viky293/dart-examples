import 'modes/DriveMode.dart';
import '../interface/Gearbox.dart';
import 'modes/NoDriveMode.dart';

class ManualTransmission implements Gearbox {
  final int totalGears;
  final type = "manual";
  int currentGear = 0;
  List<String> validModes = ["neutral", "drive", "reverse"];
  String mode = 'neutral';
  ManualTransmission(this.totalGears) {}

  @override
  getGearboxInfo() {
    return {
      "currentGear": currentGear,
      "mode": mode,
      "type": type,
      "driveMode":driveMode.driveModeName,
      "totalGears": totalGears
    };
  }

  @override
  setMode(String mode, double speed) {
    //Shift Up or down to change the modes accordingly
    if (speed == 0) {
      while (mode != 'reverse') {
        shiftDown(speed);
        _detectMode();
      }
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

  @override
  shiftDown(double speed) {
    if (driveMode.isShiftAllowed(
        speed, totalGears, currentGear, currentGear - 1)) {
      //Manual transmission doesn't care about current speed and just performs the shift
      if (currentGear > 1) {
        --currentGear;
      }
      if (speed == 0) {
        currentGear = 0;
      }
      _detectMode();
    }
  }

  @override
  shiftUp(double speed) {
    if (driveMode.isShiftAllowed(
        speed, totalGears, currentGear, currentGear + 1)) {
      //Manual transmission doesn't care about current speed and just performs the shift
      if (currentGear <= totalGears) {
        ++currentGear;
      }
      _detectMode();
    }
  }

  @override
  DriveMode driveMode = NoDriveMode(0);
}
