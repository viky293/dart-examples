import '../interface/IGear.dart';

class Gear implements IGear {
  @override
  int numGear;

  Gear(this.numGear);
  @override
  getGearInfo() {
    return {"numGear": numGear};
  }
}
