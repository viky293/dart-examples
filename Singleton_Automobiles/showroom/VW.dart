import '../BaseAutomobile.dart';
import '../builder/CustomVehicle.dart';
import '../interface/Showroom.dart';
import '../vehicles/NullVehicle.dart';
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

  @override
  BaseAutomobile buildAutomobile(String model) {
    BaseAutomobile vehicle;
    switch (model) {
      case 'VWPoloGTTSI':
        vehicle =
            VWPoloGTTSI(); //Each product can implement their own factory, here is it's concrete initialization.
        break;
      case 'VWPoloTDI':
        vehicle = VWPoloTDI();
        break;
      default:
        vehicle = NullVehicle();
    }
    return vehicle;
  }

  @override
  CustomVehicle customize() {
    CustomVehicle customVw = CustomVehicle();
    customVw.setModelName('CustomVW');
    return customVw;
  }
}
