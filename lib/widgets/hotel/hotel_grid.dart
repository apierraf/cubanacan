import '/widgets/hotel/hotel_item.dart';

import '/controllers/hotel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelGrid extends StatelessWidget {
  final HotelController hotelController = Get.put(HotelController());
  HotelGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Obx(
          () {
            return GridView.builder(
              itemCount: hotelController.hotelList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => HotelItem(
                hotel: hotelController.hotelList[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
