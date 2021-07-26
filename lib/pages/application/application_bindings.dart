import '/controllers/application_controller.dart';
import 'package:get/instance_manager.dart';

class ApplicationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationControler>(() => ApplicationControler());
  }
}
