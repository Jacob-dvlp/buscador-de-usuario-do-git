import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';
import '../routes/app_routers.dart';
import '../util/coloresutill.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouters.initial,
      getPages: AppPages.pages,
      theme: ThemeData(
        highlightColor: AppColors.primary,
        hintColor: AppColors.primary,
      ),
    );
  }
}
