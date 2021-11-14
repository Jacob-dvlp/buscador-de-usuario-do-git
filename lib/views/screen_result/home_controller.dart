
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/result_profile.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  var dataname = Get.arguments;

  final formKey = GlobalKey<FormState>();
  final inputSearch = TextEditingController();
  String validatorInput(text) {
    if (text.isEmpty) {
      return "Digite alguma coisa";
    }
    return null;
  }

  Future showResult() async {
    change([], status: RxStatus.loading());
    try {
      ServiceSearchUser().searchUserGit(dataname[0]).then(
        (value) {
          change(value, status: RxStatus.success());
        },
        onError: (erro) {
          change(erro, status: RxStatus.error("Usuário não  encontrado"));
        },
      );
    } catch (error) {
      return null;
    }
  }

  @override
  void onInit() {
    showResult();
    super.onInit();
  }
}
