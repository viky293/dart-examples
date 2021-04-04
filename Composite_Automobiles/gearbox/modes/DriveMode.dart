abstract class DriveMode {
  final double maxSpeed;
  final String driveModeName;
  DriveMode(this.maxSpeed,this.driveModeName);
  bool isShiftAllowed(
      double currentSpeed, int totalNumberofGears, int fromGear, int toGear);
}
