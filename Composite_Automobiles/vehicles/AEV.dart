import '../BaseAutomobile.dart';
import '../ElectricDrive/EVDrive.dart';
import '../adapter/EvEngineAdapter.dart';
import '../adapter/EvGearboxAdapter.dart';
import '../wheels/FrontWheel.dart';

class AEV extends BaseAutomobile {
  EVDrive edrive;
  AEV(this.edrive)
      : super('AdaptedEV', EvEngineAdapert(edrive), EvGearboxAdapter(edrive),
            new FrontWheel(), 200);
}
