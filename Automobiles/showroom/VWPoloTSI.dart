import '../BaseAutomobile.dart';
import '../engine/Petrol.dart';
import '../gearbox/ManualTransmission.dart';
import '../wheels/FrontWheel.dart';

class VWPoloTSI extends BaseAutomobile {
  VWPoloTSI() : super(new Petrol(), new ManualTransmission(5),new FrontWheel(), 190) {}
}
