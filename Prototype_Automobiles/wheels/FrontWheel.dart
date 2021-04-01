import '../brakes/Drum.dart';
import '../interface/Brakes.dart';
import '../interface/Wheels.dart';

class FrontWheel implements Wheels {
  @override
  Brakes brakes = Drum();

  @override
  getWheelsInfo() {
    return {'driveType': 'FrontWheel', "brakes": brakes.getBrakesInfo()};
  }
}
