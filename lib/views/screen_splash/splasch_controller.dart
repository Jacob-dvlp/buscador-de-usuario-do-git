import '../../routes/app_routers.dart';
import 'package:get/get.dart';

class SplaschController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 5), () {
      return Get.offNamed(AppRouters.searchuser);
    });
    super.onInit();
  }
}
