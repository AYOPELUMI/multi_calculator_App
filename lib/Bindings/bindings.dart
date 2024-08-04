import 'package:get/get.dart';

import '../Controllers/emicontroller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmiController());
  }
  
}