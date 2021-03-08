import 'package:financial_design/app/routes/app_routes.dart';
import 'package:financial_design/modules/dashboard/dashboard.dart';
import 'package:financial_design/modules/deposits/deposits_page.dart';
import 'package:get/get.dart';

class AppPages {
  static var pages = [
    GetPage(name: AppRoutes.DASHBOARD, page: () => Dashboard()),
    GetPage(name: AppRoutes.DEPOSITS, page: () => DepositsPage()),
  ];
}
