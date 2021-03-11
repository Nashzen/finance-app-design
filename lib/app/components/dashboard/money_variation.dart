import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class MoneyVariation extends StatelessWidget {
  final String text;

  MoneyVariation({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightGreen,
        border: Border.all(color: lightGreen),
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        child: CustomText(
          fontWeight: FontWeight.w600,
          text: '+$text%',
          fontSize: 18,
        ),
      ),
    );
  }
}
