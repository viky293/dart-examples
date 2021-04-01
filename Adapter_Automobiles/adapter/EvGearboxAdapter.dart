import '../interface/ElectricDrive.dart';
import '../interface/Gearbox.dart';

class EvGearboxAdapter implements Gearbox {
  ElectricDrive adaptFrom;
  EvGearboxAdapter(this.adaptFrom);
  @override
  getGearboxInfo() {
    return {
      "currentGear": '-',
      "mode": adaptFrom.displayInfo()['mode'],
      "type": '-',
      "totalGears": '-'
    };
  }

  @override
  setMode(String mode, double speed) {
    adaptFrom.setMode();
  }

  @override
  shiftDown(double speed) {
    adaptFrom.deaccelerate();
  }

  @override
  shiftUp(double speed) {
    adaptFrom.accelerate();
  }
}
