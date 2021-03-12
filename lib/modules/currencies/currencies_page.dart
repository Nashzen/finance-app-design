import 'package:financial_design/app/components/currencies/currency_card.dart';
import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:financial_design/modules/currencies/currencies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrenciesPage extends StatelessWidget {
  final CurrenciesController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var _currency = controller.currencies.value.results.currencies;

    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          CurrencyCard(
            icon: 'assets/icons/argentina.png',
            valueText: '1 Peso Argentino = R\$${_currency.aRS.buy.toString()}',
            variationText: _currency.aRS.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/australia.png',
            valueText:
                '1 Dólar Australiano = R\$${_currency.aUD.buy.toString()}',
            variationText: _currency.aUD.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/bitcoin.png',
            valueText: '1 Bitcoin = R\$${_currency.bTC.buy.toString()}',
            variationText: _currency.bTC.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/canada.png',
            valueText: '1 Dólar Canadense = R\$${_currency.cAD.buy.toString()}',
            variationText: _currency.cAD.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/china.png',
            valueText: '1 Renminbi = R\$${_currency.cNY.buy.toString()}',
            variationText: _currency.cNY.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/euro.png',
            valueText: '1 Euro = R\$${_currency.eUR.buy.toString()}',
            variationText: _currency.eUR.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/libra.png',
            valueText: '1 Libra Esterlina = R\$${_currency.gBP.buy.toString()}',
            variationText: _currency.gBP.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/japan.png',
            valueText: '1 Iene Japonês = R\$${_currency.jPY.buy.toString()}',
            variationText: _currency.jPY.variation,
          ),
          CurrencyCard(
            icon: 'assets/icons/usa.png',
            valueText: '1 Dólar Americano = R\$${_currency.uSD.buy.toString()}',
            variationText: _currency.uSD.variation,
          ),
        ],
      ),
    );
  }
}
