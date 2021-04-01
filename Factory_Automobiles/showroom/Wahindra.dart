import '../BaseAutomobile.dart';
import '../interface/Showroom.dart';
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
}
