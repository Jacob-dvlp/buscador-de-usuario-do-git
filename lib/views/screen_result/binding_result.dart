import 'package:get/get.dart';

import 'home_controller.dart';

class BindingResult implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
