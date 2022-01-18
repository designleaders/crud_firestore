import 'package:get/get.dart';

class HomeDependency extends GetxController {
  var count = 0.obs;

  counter() {
    count++;
  }
}
