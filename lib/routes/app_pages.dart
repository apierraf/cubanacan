import '/pages/explorer/hotel_details_page.dart';

import '/pages/application/application_bindings.dart';
import '/pages/application/application_page.dart';
import '/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.APPLICATION,
      page: () => ApplicationPage(),
      binding: ApplicationBindings(),
    ),
    GetPage(
      name: AppRoutes.DETAILSHOTEL,
      page: () => HotelDetails(),
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
