import '../../util/label.dart';
import 'widgets/result_body.dart';
import '../widget/custon_result_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Result extends GetView<HomeController> {
  const Result({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_controller) {
        return Scaffold(
          appBar: const AppBardefaul(title: resultAppBar),
          body: controller.obx(
            (state) {
              return resultBody(state,_controller);
            },
            onError: (erro) {
              return Center(
                  child: Text(
                erro,
                style: const TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              ));
            },
          ),
        );
      },
    );
  }
}
