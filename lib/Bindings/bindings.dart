import 'package:get/get.dart';

import '../Controllers/emicontroller.dart';
import '../Controllers/fdcontroller.dart';
import '../Controllers/sipcontroller.dart';
import '../Controllers/swpcontroller.dart';



class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmiController());
    Get.lazyPut(() => SipController());
    Get.lazyPut(() => SwpController());
    Get.lazyPut(() => FdController());
  }
  
}