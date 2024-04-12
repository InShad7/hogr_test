import 'package:get/get.dart';

import '../controller/page_two_controller.dart';

class PageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageTwoController());
  }
}
