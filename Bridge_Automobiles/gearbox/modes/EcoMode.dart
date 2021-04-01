import 'DriveMode.dart';

class EcoMode extends DriveMode {
  EcoMode(double maxSpeed) : super(maxSpeed,'ECO');

  @override
  bool isShiftAllowed(currentSpeed, totalNumberofGears, fromGear, toGear) {
    if (fromGear == 0 && toGear == 1) {
      return true;
    }

    if (fromGear < toGear) {
      final maxPermissibleSpeedOnCurrentGear =
          ((maxSpeed / totalNumberofGears) * fromGear);
      if (currentSpeed > maxPermissibleSpeedOnCurrentGear) {
        return true;
      }
    }

    if (fromGear > toGear) {
      final maxPermissibleSpeedOnCurrentGear =
          ((maxSpeed / totalNumberofGears) * fromGear);
      if (currentSpeed < maxPermissibleSpeedOnCurrentGear) {
        return true;
      }
    }
    return false;
  }
}
