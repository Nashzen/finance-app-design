import 'package:financial_design/app/routes/app_routes.dart';
import 'package:financial_design/modules/currencies/currencies_binding.dart';
import 'package:financial_design/modules/currencies/currencies_page.dart';
import 'package:financial_design/modules/dashboard/dashboard.dart';
import 'package:financial_design/modules/deposits/deposits_page.dart';
import 'package:financial_design/modules/menu/menu_page.dart';
import 'package:get/get.dart';

class AppPages {
  static var pages = [
    GetPage(
      name: AppRoutes.MENU,
      page: () => MenuPage(),
    ),
    GetPage(
      name: AppRoutes.DASH,
      page: () => Dashboard(),
    ),
    GetPage(
      name: AppRoutes.DEPOSITS,
      page: () => DepositsPage(),
    ),
    GetPage(
      name: AppRoutes.CURRENCIES,
      page: () => CurrenciesPage(),
      binding: CurrenciesBinding(),
    ),
  ];
}
