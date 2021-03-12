import 'package:financial_design/app/routes/app_pages.dart';
import 'package:financial_design/app/routes/app_routes.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:financial_design/modules/currencies/currencies_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData.light().copyWith(primaryColor: background),
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.native,
    getPages: AppPages.pages,
    initialRoute: AppRoutes.MENU,
    initialBinding: CurrenciesBinding(),
  ));
}
