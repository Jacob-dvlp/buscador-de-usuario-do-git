
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custon_result_user.dart';
import 'search_controller.dart';
import 'widget/search_body.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
      init: SearchController(),
      builder: (_) => Scaffold(
        appBar: const AppBardefaul(),
        body: SingleChildScrollView(
          child: searchBody(_),
        ),
      ),
    );
  }
}
