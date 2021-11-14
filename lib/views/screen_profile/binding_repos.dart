import 'package:get/get.dart';

import 'profile_controller.dart';

class BindingRepos implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
