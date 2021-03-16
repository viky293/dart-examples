import '../brakes/Drum.dart';
import 'Brakes.dart';

abstract class Wheels {
  //define Wheels interface here
  //this class can be abstract
  getWheelsInfo();
  Brakes brakes = Drum();
}
