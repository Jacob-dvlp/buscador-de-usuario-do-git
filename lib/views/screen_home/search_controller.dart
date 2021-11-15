import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/repository/result_profile.dart';
import '../../routes/app_routers.dart';

class SearchController extends GetxController {
  static SearchController get to => SearchController();
  final formKey = GlobalKey<FormState>();

  TextEditingController inputSearch = TextEditingController();
  ServiceSearchUser serviceSearchUser = ServiceSearchUser();

  String validatorInput(text) {
    if (text.isEmpty) {
      return "Digite alguma coisa";
    }
    return null;
  }
  Future nextPage() {
    String argumentinput = inputSearch.text;
    var formOk = formKey.currentState.validate() == true;
    if (!formOk) {
      return null;
    } else {
      return Get.toNamed(AppRouters.resultPage, arguments: [argumentinput]);
    }
  }
}
