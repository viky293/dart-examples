import '../BaseAutomobile.dart';
import '../builder/CustomVehicle.dart';

abstract class IAutomobileFactory {
  BaseAutomobile buildAutomobile(String model);
  CustomVehicle customize();
}
