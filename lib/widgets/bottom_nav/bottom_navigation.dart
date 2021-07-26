import '/controllers/application_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// ignore: camel_case_types
class MyBottom_Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplicationControler>(
      builder: (controller) {
        return Material(
          elevation: 5,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: SalomonBottomBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              SalomonBottomBarItem(
                  icon: Icon(
                    Icons.explore_rounded,
                    color: Colors.red.shade400,
                  ),
                  title: Text("Explorar"),
                  selectedColor: Colors.red.shade600),
              SalomonBottomBarItem(
                  icon: Icon(
                    Icons.card_giftcard_rounded,
                    color: Colors.red.shade400,
                  ),
                  title: Text("Ofertas"),
                  selectedColor: Colors.red.shade600),
              SalomonBottomBarItem(
                  icon: Icon(
                    Icons.room_service_rounded,
                    color: Colors.red.shade400,
                  ),
                  title: Text("Servicios"),
                  selectedColor: Colors.red.shade600),
              SalomonBottomBarItem(
                  icon: Icon(
                    Icons.tune_rounded,
                    color: Colors.red.shade400,
                  ),
                  title: Text("Configuración"),
                  selectedColor: Colors.red.shade600),
            ],
          ),
        );
      },
    );
  }
}
