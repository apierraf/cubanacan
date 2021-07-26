import 'dart:ui';

import '/controllers/hotel_details_controller.dart';

import '/models/hotel_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:delayed_display/delayed_display.dart';

class HotelDetails extends StatelessWidget {
  final Hotel hotel = Get.arguments;
  final HotelsDetailsController controller = Get.put(HotelsDetailsController());

  HotelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 35, horizontal: 5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        width: double.infinity,
                        child: Hero(
                          tag: hotel.nombre,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                              imageUrl: hotel.imagen,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: -10,
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 500),
                        child: RawMaterialButton(
                          elevation: 3,
                          shape: CircleBorder(),
                          fillColor: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.red,
                          ),
                          onPressed: () => Get.back(),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DelayedDisplay(
                            delay: Duration(milliseconds: 500),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black54,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Text(
                                hotel.nombre,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 500),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black54,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.place_rounded,
                                          color: Colors.red,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          hotel.direccion,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: List.generate(
                                          5,
                                          (index) {
                                            return Icon(
                                              index < hotel.categoria
                                                  ? Icons.star
                                                  : Icons.star_border,
                                              color: Colors.yellow,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Cantidad de personas'),
                    SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RawMaterialButton(
                            constraints: BoxConstraints(minWidth: 0),
                            onPressed: () => (controller.count > 1)
                                ? controller.decrement()
                                : null,
                            elevation: 0,
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                              size: 20,
                            ),
                            fillColor: Theme.of(context).primaryColor,
                            padding: EdgeInsets.all(5.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Obx(
                            () => Text(controller.count.toString()),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RawMaterialButton(
                            constraints: BoxConstraints(minWidth: 0),
                            elevation: 0,
                            onPressed: () => controller.increment(),
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                              size: 20,
                            ),
                            fillColor: Theme.of(context).primaryColor,
                            padding: EdgeInsets.all(5.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 100),
              child: DelayedDisplay(
                delay: Duration(milliseconds: 500),
                child: Text(hotel.descripcion),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: DelayedDisplay(
        delay: Duration(milliseconds: 500),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 95,
          child: Material(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.red[400],
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Total a pagar:',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Text(
                          '\$ ${controller.priceXPerson(
                                hotel.precio,
                              ).toString()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    shape: StadiumBorder(),
                    child: Text('Pagar'),
                    textColor: Colors.red,
                    onPressed: () => print('pagar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
