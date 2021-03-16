import '../BaseAutomobile.dart';
import '../interface/Showroom.dart';

class NoShowroom implements Showroom {
  @override
  String getBrand() {
    return '';
  }

  @override
  List<BaseAutomobile> getVhicles() {
    return [];
  }
}
