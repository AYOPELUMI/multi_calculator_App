import 'dart:math';

import 'package:get/get.dart';

class EmiController extends GetxController {
  var principal = 0.0.obs;
  var rate = 0.0.obs;
  var tenure = 0.0.obs;



void principalOnChanged(newValue){
  principal.value = newValue.toDouble();
  update();
}
void tenureOnChanged(newValue){
  tenure.value = newValue;
  update();
}
void rateOnChanged(newValue){
  rate.value = newValue;
  update();
}
double getEmi (){
  return (principal.value * (rate.value/1200)*pow(1+ (rate.value/1200),tenure.value * 12))/(pow(1+ (rate.value/1200),tenure.value * 12) -1);
}
}