import '../interface/Brakes.dart';

class Drum implements Brakes {
  bool abs = true;
  bool hold = false;
  @override
  double applyBreaks(double speed) {
    if (abs) {
      return speed - 1;
    }
    return speed - .5;
  }

  @override
  getBrakesInfo() {
    return {"abs": abs, "type": 'drum', 'hold': hold};
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
