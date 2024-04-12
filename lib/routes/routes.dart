import 'package:get/get.dart';
import 'package:hogr/module/page_one/binding/page_one_binding.dart';
import 'package:hogr/module/page_one/view/page_one_screen.dart';
import 'package:hogr/module/page_three/view/page_three_screen.dart';
import 'package:hogr/module/page_two/view/page_two.dart';

import '../module/page_three/binding/page_three_binding.dart';
import '../module/page_two/binding/page_two_binding.dart';

class AppPages {
  static const initial = '/page1';

  static final pages = [
    GetPage(
      name: '/page1',
      page: () => const PageOne(),
      binding: PageOneBinding(),
    ),
    GetPage(
      name: '/page2',
      page: () => const PageTwo(),
      binding: PageTwoBinding(),
    ),
    GetPage(
      name: '/page3',
      page: () => const PageThree(),
      binding: PageThreeBinding(),
    ),
  ];
}
