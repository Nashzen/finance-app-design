import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:financial_design/app/utils/custom_colors.dart';

class Investments extends StatelessWidget {
  final String investment;
  final String cash;

  Investments({this.investment, this.cash});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        children: [
          Divider(color: navy),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        fontSize: 18,
                        text: 'Ações',
                        textColor: purpleTextColors,
                      ),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: purpleTextColors,
                        size: 18,
                      )
                    ],
                  ),
                  CustomText(
                    fontSize: 20,
                    text: '\$$investment',
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              VerticalDivider(color: navy),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        fontSize: 18,
                        text: 'Dinheiro investido',
                        textColor: purpleTextColors,
                      ),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: purpleTextColors,
                        size: 18,
                      )
                    ],
                  ),
                  CustomText(
                    fontSize: 20,
                    text: '\$$cash',
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(color: navy)
        ],
      ),
    );
  }
}
