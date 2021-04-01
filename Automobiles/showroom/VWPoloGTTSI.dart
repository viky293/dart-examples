import '../BaseAutomobile.dart';
import '../engine/Petrol.dart';
import '../gearbox/AutomaticTransmission.dart';
import '../wheels/FrontWheel.dart';

class VWPoloGTTSI extends BaseAutomobile {
  VWPoloGTTSI()
      : super(new Petrol(), new AutomaticTransmission(9), new FrontWheel(),
            200) {}
}
