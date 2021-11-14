import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../util/label.dart';
import '../widget/custon_result_user.dart';
import 'profile_controller.dart';
import 'widgets/widget_profile_body.dart';
import 'widgets/widget_profile_header.dart';

class ScreenProfile extends GetView<ProfileController> {
  const ScreenProfile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBardefaul(title: profile),
      body: GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (_) => Column(
          children: [
            custtonWidgetHeader(_),
            Expanded(
              child: controller.obx(
                (state) => ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (_, index) {
                    return custonWidgetBody(state, index);
                  },
                ),
                onError: (error) {
                  return Center(
                    child: Text(
                      error,
                      style: const TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
