import 'DriveMode.dart';

class SportsMode extends DriveMode {
  SportsMode(double maxSpeed) : super(maxSpeed, 'SPORTS');

  @override
  bool isShiftAllowed(currentSpeed, totalNumberofGears, fromGear, toGear) {
    // Sports mode would try to delay the linear shift and optimize for higher RPMs
    //Let's say if max speed is 200 with 5 gears, with equal drive ratio then
    //Gears must only change with the step of 40 in speed.
    //if fromGear is 0 always allow the shift to 1
    if (fromGear == 0 && toGear == 1) {
      return true;
    }
    //Otherwise for upshift always check that current gear is overruning it's linear speed by 10%
    //Let's say a shift to second gear in linear fashion would be allowed at
    //40 (200/5)
    //in sports mode for this to be allowed current speed must be greater than 44

    if (fromGear < toGear) {
      final maxPermissibleSpeedOnCurrentGear =
          (1.1 * (maxSpeed / totalNumberofGears) * fromGear);
      if (currentSpeed > maxPermissibleSpeedOnCurrentGear) {
        return true;
      }
    }

    if (fromGear > toGear) {
      final maxPermissibleSpeedOnCurrentGear =
          (1.1 * (maxSpeed / totalNumberofGears) * fromGear);
      if (currentSpeed < maxPermissibleSpeedOnCurrentGear) {
        return true;
      }
    }
    return false;
  }
}
