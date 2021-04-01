import 'factory/ShowroomFactory.dart';
import 'interface/Showroom.dart';
// import 'showroom/VW.dart';
// import 'showroom/Wahindra.dart';

/**
 * Let's assume that you were not satisfied by a particular showroom.
 * You want to visit, brand specific showroom and there is this 1000Km long
 * wanderlust highway where at every 25Km you have VW showroom and at every
 * 17Km you have a Wahindra showroom. 
 * 
 * You want to checkout what all cars they have.
 */
class Highway {
  int distanceTravelled = 0;
  Showroom currentShowroom = ShowroomFactory()
      .getShowroomByBrand('vw'); //Just using it as our default showroom.
  visitShowrooms() {
    while (distanceTravelled != 1000) {
      distanceTravelled++;
      //This could be our first implementation
      //Obvious improvements possible here
      //With this approach if you travel again after a month and a third brand
      //showroom appears at every 100 KM you will have to comeback and include another
      //"if" block here.
      //Ofcourse nothing wrong with this approach as long as there is only one highway
      //and this is the only way shoowrooms can be utilized.
      //First approach, creating objects in place
      // if (distanceTravelled % 25 == 0) {
      //   currentShowroom = VW();
      // }
      // if (distanceTravelled % 17 == 0) {
      //   currentShowroom = Wahindra();
      // }

      // Second step externalize object creation, you may call it factory or anything it doesn't matter
      // if (distanceTravelled % 25 == 0) {
      //   currentShowroom = ShowroomFactory().getShowroomByBrand('vw');
      // }
      // if (distanceTravelled % 17 == 0) {
      //   currentShowroom = ShowroomFactory().getShowroomByBrand('wahindra');
      // }
      //3rd Step further abstract as per your requirements to avoid code duplication
      currentShowroom = ShowroomFactory().getShowroomAtKM(distanceTravelled);
      if (currentShowroom.getVhicles().length > 0) {
        print(
            'At $distanceTravelled found ${currentShowroom.getBrand()} showroom');
        currentShowroom.getVhicles().forEach((v) {
          v.getInfo();
        });
      }
    }
  }
}

void main() {
  Highway().visitShowrooms();
}
