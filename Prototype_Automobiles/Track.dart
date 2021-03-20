import 'vehicles/VWPoloTDI.dart';
import 'vehicles/VWPoloTSI.dart';
import 'vehicles/VWPoloGTTSI.dart';
import 'dart:math';

import 'BaseAutomobile.dart';
import 'vehicles/Thar.dart';

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
      vehicle.clone().getInfo();
    }
  }
}
