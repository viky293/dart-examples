import '../BaseAutomobile.dart';
import '../interface/Showroom.dart';
import '../vehicles/NullVehicle.dart';

class NoShowroom implements Showroom {
  @override
  String getBrand() {
    return '';
  }

  @override
  List<BaseAutomobile> getVhicles() {
    return [];
  }

  @override
  BaseAutomobile buildAutomobile(String model) {
    return NullVehicle();
  }
}
