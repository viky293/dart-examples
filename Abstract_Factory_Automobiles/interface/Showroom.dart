import '../BaseAutomobile.dart';
import 'IAutomobileFactory.dart';

abstract class Showroom implements IAutomobileFactory {
  String getBrand();
  List<BaseAutomobile> getVhicles();
}
