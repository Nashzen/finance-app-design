import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:financial_design/app/utils/custom_colors.dart';

class CurrencyCard extends StatelessWidget {
  final String icon;
  final double variationText;
  final String valueText;

  CurrencyCard({
    this.icon,
    this.variationText,
    this.valueText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: ListTile(
          leading: icon == null
              ? SizedBox.shrink()
              : Image.asset(
                  icon,
                  height: 50,
                  width: 50,
                ),
          title: CustomText(
            text: valueText != null ? valueText : '0.00',
            fontSize: 16,
            maxLines: 2,
          ),
          subtitle: CustomText(
            text: variationText == null
                ? '0.00'
                : variationText < 0
                    ? 'Variação: $variationText%'
                    : 'Variação: +$variationText%',
            fontSize: 14,
            textColor: variationText == null
                ? marvelRed
                : variationText < 0
                    ? marvelRed
                    : lightGreen,
          ),
        ));
  }
}
