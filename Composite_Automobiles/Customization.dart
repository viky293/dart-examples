import 'BaseAutomobile.dart';
import 'builder/CustomVehicle.dart';
import 'factory/ShowroomFactory.dart';
import 'interface/Showroom.dart';

void main() {
  Showroom vw = ShowroomFactory().getShowroomByBrand('vw'); // Simple Factory
  //Each showroom is enforced to return a builder for via customize method enforced by an abstract factory.
  //In this case they will return the same builder, only difference would be that model name would be already set.
  //You would still be able to change the model name. If you want to restrict chaning models names. Just take this out of builder.
  //Builder pattern enforces and encapsulates the generation of variations and assembly of sub classes/objects
  //Abstracts from client that how these individual components are used to create the final object.
  CustomVehicle customizer = vw.customize();
  customizer.addPetrolEngine();
  customizer.addManualTransmission(5);
  customizer.addFrontWheelDrive();
  BaseAutomobile customVehicle = customizer.getVheicle();
  customVehicle.getInfo();

  Showroom wahindra = ShowroomFactory().getShowroomByBrand('wahindra');
  customizer = wahindra.customize();
  customizer.addPetrolEngine();
  customizer.addManualTransmission(5);
  customizer.addFourByFourDrive();
  customVehicle = customizer.getVheicle();
  customVehicle.getInfo();
}
