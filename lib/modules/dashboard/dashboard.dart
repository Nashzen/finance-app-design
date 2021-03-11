import 'package:financial_design/app/components/dashboard/button_row.dart';
import 'package:financial_design/app/components/dashboard/dashboard_balance.dart';
import 'package:financial_design/app/components/dashboard/investments.dart';
import 'package:financial_design/app/components/dashboard/investments_information.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          DashboardBalance(),
          Investments(
            cash: '43,25',
            investment: '1934,99',
          ),
          InvestmentsInformation(),
          ButtonRow(),
        ],
      ),
    );
  }
}
