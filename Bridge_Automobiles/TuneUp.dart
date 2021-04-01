import 'vehicles/VWPoloTDI.dart';

void main() {
  //No Modes
  var manualTestVehicle = VWPoloTDI();
  for (var i = 0; i < 10; i++) {
    manualTestVehicle.drive();
    manualTestVehicle.getInfo();
  }
  for (var i = 0; i < 10; i++) {
    manualTestVehicle.stop();
    manualTestVehicle.getInfo();
  }
  //Eco Mode
  manualTestVehicle = VWPoloTDI();
  manualTestVehicle.driveModeEco();
  for (var i = 0; i < 10; i++) {
    manualTestVehicle.drive();
    manualTestVehicle.getInfo();
  }
  for (var i = 0; i < 10; i++) {
    manualTestVehicle.stop();
    manualTestVehicle.getInfo();
  }
  //Sports Mode
  manualTestVehicle = VWPoloTDI();
  manualTestVehicle.driveModeSports();
  for (var i = 0; i < 10; i++) {
    manualTestVehicle.drive();
    manualTestVehicle.getInfo();
  }
  for (var i = 0; i < 10; i++) {
    manualTestVehicle.stop();
    manualTestVehicle.getInfo();
  }
}
