import '/theme/theme_service.dart';
import 'package:flutter/material.dart';

import '/pages/application/application_bindings.dart';
import '/routes/app_pages.dart';
import '/routes/app_routes.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import '/theme/themes.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.APPLICATION,
      initialBinding: ApplicationBindings(),
      getPages: AppPages.list,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    );
  }
}
