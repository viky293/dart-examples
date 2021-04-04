import '../interface/IGear.dart';

class Gears implements IGear {
  List<IGear> allGears = [];

  @override
  int numGear=0;

  @override
  getGearInfo() {
    allGears.forEach((element) {
      print('Gear number -> ${element.getGearInfo()}');
    });
  }

  void addGear(IGear gear) {
    allGears.add(gear);
    numGear = allGears.length;
  }
}
