import '../BaseAutomobile.dart';
import '../engine/Diesel.dart';
import '../gearbox/ManualTransmission.dart';
import '../wheels/FourByFour.dart';

class Thar extends BaseAutomobile {
  Thar()
      : super('Thar', new Diesel(), new ManualTransmission(6), new FourByFour(),
            160) {}
}
