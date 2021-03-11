import 'package:financial_design/app/components/dashboard/money_variation.dart';
import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class DashboardBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: Column(
          children: [
            Row(
              children: [
                CustomText(
                  text: '\$430,22',
                  fontSize: 40,
                ),
                SizedBox(width: 10),
                MoneyVariation(
                  text: '4.33',
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  fontSize: 16,
                  textColor: purpleTextColors,
                  text: 'Seu saldo',
                ),
              ],
            ),
          ],
        ));
  }
}
