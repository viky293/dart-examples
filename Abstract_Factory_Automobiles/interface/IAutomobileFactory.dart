import '../BaseAutomobile.dart';

abstract class IAutomobileFactory {
  BaseAutomobile buildAutomobile(String model);
}
