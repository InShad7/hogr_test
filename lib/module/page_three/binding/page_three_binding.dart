import 'package:get/get.dart';

import '../controller/page_three_controller.dart';


class PageThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageThreeController());
  }
}
