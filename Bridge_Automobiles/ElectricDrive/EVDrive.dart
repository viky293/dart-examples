import '../interface/ElectricDrive.dart';

class EVDrive implements ElectricDrive {
  String model = 'ElecTron';
  String type = 'EV';
  String fuel = 'Electric';
  List<String> validModes = ["neutral", "drive", "reverse"];
  int modeCounter = 0;
  String mode = 'neutral';

  @override
  void accelerate() {
    print('Accelerating!');
  }

  @override
  void deaccelerate() {
    print('Deaccelerating!');
  }

  @override
  displayInfo() {
    return {"mode": mode, "fuelType": fuel};
  }

  @override
  void setMode() {
    mode = validModes[modeCounter++ % 2];
  }
}
