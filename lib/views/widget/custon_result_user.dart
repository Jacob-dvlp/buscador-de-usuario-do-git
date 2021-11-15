import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/coloresutill.dart';

class AppBardefaul extends StatelessWidget implements PreferredSize {
  final String title;
  const AppBardefaul({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ?   Text(title) : const Text(""),
      centerTitle: true,
      backgroundColor: AppColors.primary,
    );
  }

  @override
  Widget get child => const AppBardefaul(
        title: '',
      );

  @override
  Size get preferredSize => Size(Get.width, 57);
}
