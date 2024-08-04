import 'dart:math';

import 'package:get/get.dart';

class EmiController extends GetxController {
  var principal = 0.obs;
  var rate = 0.obs;
  var tenure = 0.obs;
  double get emi => (principal.value * (rate.value/1200)*pow(1+ (rate.value/1200),tenure.value * 12))/(pow(1+ (rate.value/1200),tenure.value * 12) -1);

void principalOnChanged(newValue){
  principal = newValue;
  update();
}
void tenureOnChanged(newValue){
  tenure = newValue;
  update();
}
void rateOnChanged(newValue){
  rate = newValue;
  update();
}

}