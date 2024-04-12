import 'package:get/get.dart';
import 'package:hogr/module/page_one/controller/page_one_controller.dart';

class PageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageOneController());
  }
}
