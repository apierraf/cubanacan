import 'package:flutter/material.dart';
import '/pages/settings/settings.dart';

import '/pages/explorer/explorer_page.dart';
import '/pages/offers/offers_page.dart';
import '/pages/services/services_page.dart';
import '/controllers/application_controller.dart';
import '/widgets/bottom_nav/bottom_navigation.dart';
import 'package:get/get.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplicationControler>(
      builder: (controller) {
        return Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: Text(
              controller.appName,
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            actions: [
              Visibility(
                visible: (controller.tabIndex != 0) ? false : true,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list_sharp,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                ExplorerPage(),
                OffersPage(),
                ServicesPage(),
                ConfigurationPage(),
              ],
            ),
          ),
          bottomNavigationBar: MyBottom_Navigation(),
        );
      },
    );
  }
}
