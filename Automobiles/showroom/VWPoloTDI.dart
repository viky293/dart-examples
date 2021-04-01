import '../BaseAutomobile.dart';
import '../engine/Diesel.dart';
import '../gearbox/ManualTransmission.dart';
import '../wheels/FrontWheel.dart';

class VWPoloTDI extends BaseAutomobile {
  VWPoloTDI()
      : super(new Diesel(), new ManualTransmission(6), new FrontWheel(), 180) {}
}
