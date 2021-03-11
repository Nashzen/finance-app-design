import 'package:financial_design/app/components/shareds/graph_container.dart';
import 'package:financial_design/app/components/shareds/info_container.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class InvestmentsInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GraphContainer(
            invested: 4,
            remaining: 25,
            valueText: '\$1795,83',
          ),
          Column(
            children: [
              InfoContainer(
                icon: Icon(
                  Icons.monetization_on_rounded,
                  color: purpleTextColors,
                  size: 25,
                ),
                headerText: 'Bônus recebido:',
              ),
              InfoContainer(
                headerText: 'Investimentos em moedas virtuais:',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
