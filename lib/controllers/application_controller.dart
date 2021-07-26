import 'package:get/get_state_manager/get_state_manager.dart';

class ApplicationControler extends GetxController {
  final String appName = 'Cubanacan';

  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
