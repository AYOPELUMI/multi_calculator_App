import 'package:get/get.dart';

import '../Controllers/emicontroller.dart';
import '../Controllers/sipcontroller.dart';


class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmiController());
    Get.lazyPut(() => SipController());
  }
  
}