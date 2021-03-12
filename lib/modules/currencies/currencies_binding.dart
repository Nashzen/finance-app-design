import 'package:financial_design/modules/currencies/currencies_controller.dart';
import 'package:financial_design/modules/currencies/currencies_repository.dart';
import 'package:get/get.dart';

class CurrenciesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrenciesController>(
        () => CurrenciesController(repository: CurrenciesRepository()));
  }
}
