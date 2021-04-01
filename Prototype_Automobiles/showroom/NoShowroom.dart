import '../BaseAutomobile.dart';
import '../builder/CustomVehicle.dart';
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

  @override
  CustomVehicle customize() {
    return CustomVehicle();
  }
}
