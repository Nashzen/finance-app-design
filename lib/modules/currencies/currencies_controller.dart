import 'package:financial_design/models/currency_model.dart';
import 'package:financial_design/modules/currencies/currencies_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class CurrenciesController extends GetxController {
  final CurrenciesRepository repository;
  CurrenciesController({@required this.repository})
      : assert(repository != null);

  final currencies = CurrencyModel().obs;
  final isLoading = true.obs; //para demonstrar o carregamento da requisicao

  @override
  void onInit() {
    super.onInit();
    getCurrencies();
  }

  Future getCurrencies() async {
    try {
      isLoading(true);
      var currenciesResponse = await repository.getCurrencies();

      if (currenciesResponse != null) {
        currencies.value = currenciesResponse;
      }
    } finally {
      isLoading(false);
    }
  }
}
