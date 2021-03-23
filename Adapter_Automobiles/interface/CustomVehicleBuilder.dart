import '../BaseAutomobile.dart';
import 'Engine.dart';
import 'Gearbox.dart';
import 'Wheels.dart';

abstract class CustomVehicleBuilder {
  double setMaxspeed(double maxSpeed);
  String setModelName(String name);
  Engine addPetrolEngine();
  Engine addDieselEngine();
  Gearbox addAutomaticTransmission(int numGears);
  Gearbox addManualTransmission(int numGears);
  Wheels addFourByFourDrive();
  Wheels addFrontWheelDrive();
  BaseAutomobile getVheicle();
}
