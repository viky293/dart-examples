import 'interface/Gearbox.dart';
import 'interface/Engine.dart';
import 'interface/Wheels.dart';

/**
 * This is where we apply code to an interface principle
 */
class BaseAutomobile {
  double speed = 0;
  String model;
  final double maxSpeed;
  Engine engine;
  Gearbox gearBox;
  Wheels wheels;
  BaseAutomobile(
      this.model, this.engine, this.gearBox, this.wheels, this.maxSpeed);
  getInfo() {
    //An interface can be enforced on the the return types of these functions
    //A better approach would be to have a getter for each parameter.
    //The implemention of such details would be out of the scope of this example
    var engineInfo = engine.getEngineInfo();
    var gearboxInfo = gearBox.getGearboxInfo();
    var wheelsInfo = wheels.getWheelsInfo();
    print(
        '$model = E: ${engineInfo['state']} \t S : $speed \t G:  ${gearboxInfo['type']} \t M: ${gearboxInfo['mode']} \t CG: ${gearboxInfo['currentGear']} \t F: ${engineInfo['fuelType']} \t W: ${wheelsInfo['driveType']} \t B: ${wheelsInfo['brakes']}');
  }

  drive() {
    if (!engine.isStart()) {
      engine.start();
    }
    gearBox.shiftUp(speed);
    if (speed < maxSpeed) {
      speed += 10;
    }
  }

  stop() {
    if (speed > 0) {
      speed = wheels.brakes.applyBreaks(speed);
    }
    if (gearBox.getGearboxInfo()['currentGear'] != 0) {
      gearBox.shiftDown(speed);
    }
  }

  reverse() {
    gearBox.setMode('reverse', speed);
  }
}
