import '../brakes/Disc.dart';
import '../interface/Brakes.dart';
import '../interface/Wheels.dart';

class FourByFour implements Wheels {
  @override
  Brakes brakes = Disc();

  @override
  getWheelsInfo() {
    return {'driveType': 'FourByFour', "brakes": brakes.getBrakesInfo()};
  }
}
