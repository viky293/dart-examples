import '../gearbox/modes/NoDriveMode.dart';
import '../gearbox/modes/DriveMode.dart';

abstract class Gearbox {
  DriveMode driveMode = NoDriveMode(0);
  //define gearbox interface here
  //this class can be abstract
  getGearboxInfo() {}
  shiftUp(double speed) {}
  shiftDown(double speed) {}
  setMode(String mode, double speed) {}
}
