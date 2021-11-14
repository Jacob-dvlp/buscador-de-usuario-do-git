import 'package:flutter/material.dart';

import '../../util/coloresutill.dart';

class AppBardefaul extends StatelessWidget implements PreferredSize {
  final String title;
  const AppBardefaul({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: AppColors.primary,
    );
  }

  @override
  Widget get child => const AppBardefaul(
        title: '',
      );

  @override
  Size get preferredSize => throw UnimplementedError();
}
