import '../interface/Showroom.dart';
import '../showroom/NoShowroom.dart';
import '../showroom/VW.dart';
import '../showroom/Wahindra.dart';

class ShowroomFactory {
  Showroom getShowroomByBrand(String brand) {
    if (brand == 'vw') {
      return VW();
    }
    if (brand == 'wahindra') {
      return Wahindra();
    }
    return NoShowroom();
  }

  Showroom getShowroomAtKM(int km) {
    if (km % 25 == 0) {
      return getShowroomByBrand('vw');
    }
    if (km % 17 == 0) {
      return getShowroomByBrand('wahindra');
    }
    return NoShowroom();
  }
}
