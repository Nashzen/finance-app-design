import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphContainer extends StatelessWidget {
  final double invested;
  final double remaining;
  final String valueText;

  GraphContainer({this.invested, this.remaining, this.valueText});
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {"Investido": invested, "Resto": remaining};

    var _chart = PieChart(
      dataMap: dataMap,
      colorList: [lightPurple, inactiveGraph],
      animationDuration: Duration(seconds: 3),
      chartRadius: MediaQuery.of(context).size.width / 4,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 8,
      centerText: "$invested%",
      legendOptions: LegendOptions(
        legendPosition: LegendPosition.right,
        showLegends: false,
        legendShape: BoxShape.circle,
      ),
      chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: false,
          showChartValues: false,
          showChartValuesInPercentage: true,
          showChartValuesOutside: true,
          chartValueStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Quicksand',
            fontSize: 20,
          )),
    );

    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
          child: Column(
            children: [
              Container(
                child: _chart,
              ),
              SizedBox(height: 10),
              CustomText(
                text: '$invested% dos ganhos investidos',
                textAlign: TextAlign.center,
                fontSize: 14,
                maxLines: 3,
                textOverflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10),
              CustomText(
                text: valueText,
                textAlign: TextAlign.center,
                fontSize: 18,
                maxLines: 3,
                textOverflow: TextOverflow.clip,
                textColor: lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
