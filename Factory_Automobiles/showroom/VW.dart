import '../BaseAutomobile.dart';
import '../interface/Showroom.dart';
import '../vehicles/VWPoloGTTSI.dart';
import '../vehicles/VWPoloTDI.dart';
import '../vehicles/VWPoloTSI.dart';

class VW implements Showroom {
  @override
  String getBrand() {
    return 'VW';
  }

  @override
  List<BaseAutomobile> getVhicles() {
    return [VWPoloTDI(), VWPoloTSI(), VWPoloGTTSI()];
  }
}
