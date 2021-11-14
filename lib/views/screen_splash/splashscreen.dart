import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splasch_controller.dart';
import '../../util/coloresutill.dart';
import 'widget/splash_body.dart';

class ScreenSplascreen extends StatelessWidget {
  const ScreenSplascreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplaschController>(
      init: SplaschController(),
      builder: (_) => Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primary,
          ),
          backgroundColor: AppColors.secondary,
          body: splasBody()),
    );
  }
}
