import 'DriveMode.dart';

class NoDriveMode extends DriveMode {
  NoDriveMode(double maxSpeed) : super(maxSpeed,'none');
  
  @override
  bool isShiftAllowed(currentSpeed, totalNumberofGears, fromGear, toGear) {
    // In our case this is going to be the default mode that would not change the gearbox behavior.
    return true;
  }
}
