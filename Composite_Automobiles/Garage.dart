import 'factory/ShowroomFactory.dart';
import 'showroom/VW.dart';

void main() {
  ShowroomFactory()
      .getShowroomByBrand('vw')
      .buildAutomobile('VWPoloGTTSI')
      .getInfo();
  //Another way without using showroom factory.
  VW().buildAutomobile('VWPoloTDI').getInfo();
  //So the idea here is that both the showrooms implement a consistent interface to build
  //Their respective products and each product knows how to build itself.
  ShowroomFactory()
      .getShowroomByBrand('wahindra')
      .buildAutomobile('Thar')
      .getInfo();
}
