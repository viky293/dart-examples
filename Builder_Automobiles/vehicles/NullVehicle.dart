import '../BaseAutomobile.dart';
import '../engine/Petrol.dart';
import '../gearbox/AutomaticTransmission.dart';
import '../wheels/FrontWheel.dart';

class NullVehicle extends BaseAutomobile {
  NullVehicle()
      : super('NullVehicle', new Petrol(), new AutomaticTransmission(9),
            new FrontWheel(), 200) {}
}
