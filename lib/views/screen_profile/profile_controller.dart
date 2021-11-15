import 'package:get/get.dart';

import '../../infra/repository/result_profile.dart';

class ProfileController extends GetxController with StateMixin<dynamic> {
  var data = Get.arguments;

  Future showResultRepos() async {
    change([], status: RxStatus.loading());
    try {
       ServiceSearchUser().getRepositorio(data[1]).then(
        (value) {
          change(value, status: RxStatus.success());
        },
        onError: (erro) {
          change(erro, status: RxStatus.error("Sem repositório"));
        },
      );
    } catch (error) {
      return null;
    }
  }

  @override
  void onInit() {
    showResultRepos();
    super.onInit();
  }
}
