import 'package:get/get.dart';

class HotelsDetailsController extends GetxController {
  var count = 1.obs;

  increment() => count++;
  decrement() => count--;

  priceXPerson(int price) => price * count.toInt();
}
