import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:financial_design/modules/currencies/currencies_page.dart';
import 'package:financial_design/modules/dashboard/dashboard.dart';
import 'package:financial_design/modules/deposits/deposits_page.dart';
import 'package:financial_design/modules/menu/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  /*Todos os controllers sao instanciados por aqui, para serem roteados, e dentro das paginas 
  apenas preciso usar o Get.find() para recuperar as informacoes*/
  final MenuController menuController = Get.put(MenuController());

  final List<Widget> pages = [
    Dashboard(),
    DepositsPage(),
    CurrenciesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0,
          title: CustomText(
            text: 'Olá, \$client',
            fontSize: 24,
          ),
          actions: [
            IconButton(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpg'),
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 15),
          child: Obx(
            () => pages.elementAt(menuController.selectedIndex.value),
          ),
        ),
        bottomNavigationBar: Obx(
          () => Theme(
              data: Theme.of(context).copyWith(
                  canvasColor: lightGrey,
                  primaryColor: Colors.white,
                  unselectedWidgetColor: lightPurple),
              child: BottomNavigationBar(
                  currentIndex: menuController.selectedIndex.value,
                  onTap: (_index) =>
                      menuController.selectedIndex.value = _index,
                  type: BottomNavigationBarType.fixed,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard),
                      label: 'Dashboard',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.monetization_on),
                      label: 'Movimentações',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.local_fire_department_sharp),
                      label: 'Cotação',
                    ),
                  ])),
        ));
  }
}
