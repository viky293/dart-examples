import '../BaseAutomobile.dart';
import '../builder/CustomVehicle.dart';
import '../interface/Showroom.dart';
import '../vehicles/NullVehicle.dart';
import '../vehicles/Thar.dart';

class Wahindra implements Showroom {
  @override
  String getBrand() {
    return 'Wahindra';
  }

  @override
  List<BaseAutomobile> getVhicles() {
    return [Thar()];
  }

  @override
  BaseAutomobile buildAutomobile(String model) {
    BaseAutomobile vehicle;
    switch (model) {
      case 'Thar':
        vehicle =
            Thar(); //Each product can implement their own factory, here is it's concrete initialization.
        break;
      default:
        vehicle = NullVehicle();
    }
    return vehicle;
  }

  @override
  CustomVehicle customize() {
    CustomVehicle customWahindra = CustomVehicle();
    customWahindra.setModelName('CustomWahindra');
    return customWahindra;
  }
}
