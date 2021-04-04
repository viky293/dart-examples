import '../interface/Brakes.dart';

class Disc implements Brakes {
  bool abs = true;
  bool hold = false;
  @override
  double applyBreaks(double speed) {
    if (abs) {
      return speed - 2;
    }
    return speed - 1;
  }

  @override
  getBrakesInfo() {
    return {"abs": abs, "type": 'disc', 'hold': hold};
  }

  @override
  toggleAbs() {
    abs = !abs;
  }

  @override
  holdBreaks() {
    hold = true;
  }

  @override
  releaseBreaks() {
    hold = false;
  }
}
