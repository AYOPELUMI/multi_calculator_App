import 'dart:math';

import 'package:get/get.dart';

class EmiController extends GetxController {
  var principal = 0.0.obs;
  var rate = 0.0.obs;
  var tenure = 0.0.obs;

  final double minPrincipal = 0;
  final double maxPrincipal = 100000000;
  final int divisionPrincipal = 10000;

  final double minRate = 0;
  final double maxRate = 100;
  final int divisionRate = 1;

  final double minTenure = 0;
  final double maxTenure = 10000000;
  final int divisionTenure = 1;

void principalOnChanged(newValue){
  principal.value = newValue.toDouble();
  update();
}
void tenureOnChanged(newValue){
  tenure.value = newValue.toDouble();
  update();
}
void rateOnChanged(newValue){
  rate.value = newValue.toDouble();
  update();
}
double getEmi (){
  return (principal.value * (rate.value/1200)*pow(1+ (rate.value/1200),tenure.value * 12))/(pow(1+ (rate.value/1200),tenure.value * 12) -1);
}
}