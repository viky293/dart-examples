import '../BaseAutomobile.dart';
import '../engine/Diesel.dart';
import '../engine/Petrol.dart';
import '../gearbox/AutomaticTransmission.dart';
import '../gearbox/ManualTransmission.dart';
import '../interface/CustomVehicleBuilder.dart';
import '../interface/Engine.dart';
import '../interface/Gearbox.dart';
import '../interface/Wheels.dart';
import '../vehicles/NullVehicle.dart';
import '../wheels/FourByFour.dart';
import '../wheels/FrontWheel.dart';

class CustomVehicle implements CustomVehicleBuilder {
  Engine engine = Petrol();
  Wheels wheels = FrontWheel();
  Gearbox gearbox = ManualTransmission(5);
  String modelName = 'CustomVehicle';
  double maxSpeed = 200;
  //Either implement a Null object for each of the above classes or use some defaults;
  @override
  Gearbox addAutomaticTransmission(int numGears) {
    gearbox = AutomaticTransmission(numGears);
    return gearbox;
  }

  @override
  Engine addDieselEngine() {
    engine = Diesel();
    return engine;
  }

  @override
  Wheels addFourByFourDrive() {
    wheels = FourByFour();
    return wheels;
  }

  @override
  Wheels addFrontWheelDrive() {
    wheels = FrontWheel();
    return wheels;
  }

  @override
  Gearbox addManualTransmission(int numGears) {
    gearbox = ManualTransmission(numGears);
    return gearbox;
  }

  @override
  Engine addPetrolEngine() {
    engine = Petrol();
    return engine;
  }

  @override
  BaseAutomobile getVheicle() {
    //Put all the necessary checks here before making this call
    if (modelName != '') {
      return BaseAutomobile(modelName, engine, gearbox, wheels, maxSpeed);
    }
    return NullVehicle();
  }

  @override
  String setModelName(String name) {
    modelName = name;
    return name;
  }

  @override
  double setMaxspeed(double speed) {
    maxSpeed = speed;
    return maxSpeed;
  }
}
