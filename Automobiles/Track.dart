import './showroom/VWPoloTDI.dart';
import './showroom/VWPoloTSI.dart';
import './showroom/VWPoloGTTSI.dart';
import 'dart:math';

import 'BaseAutomobile.dart';
import 'showroom/Thar.dart';

void main() {
  var random = new Random(9);
  int repeater = random.nextInt(30);
  List<BaseAutomobile> vehicles = [
    VWPoloTDI(),
    VWPoloTSI(),
    VWPoloGTTSI(),
    Thar()
  ];
  for (var vehicle in vehicles) {
    repeater = random.nextInt(30);
    while (repeater-- > 0) {
      if (random.nextInt(30) % 2 == 1) {
        vehicle.drive();
      } else {
        vehicle.stop();
      }
      vehicle.getInfo();
    }
  }
}
