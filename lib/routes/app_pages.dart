import '../views/screen_home/search.dart';
import '../views/screen_profile/binding_repos.dart';
import '../views/screen_profile/screen_profile.dart';
import 'package:get/get.dart';

import '../views/screen_result/binding_result.dart';
import '../views/screen_result/result.dart';
import '../views/screen_splash/splashscreen.dart';
import 'app_routers.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRouters.initial,
      page: () => const ScreenSplascreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRouters.searchuser,
      page: () => const ScreenHome(),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRouters.perfilGithub,
      page: () => const ScreenProfile(),
      transition: Transition.fade,
      binding: BindingRepos(),
    ),
    GetPage(
      name: AppRouters.resultPage,
      page: () => const Result(),
      binding: BindingResult(),
      transition: Transition.fade,
    )
  ];
}
