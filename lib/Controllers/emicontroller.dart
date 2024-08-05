import 'dart:math';

import 'package:get/get.dart';

class EmiController extends GetxController {
  var principal = 0.0.obs;
  var rate = 1.0.obs;
  var tenure = 1.0.obs;

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
int getEmi (){
  return ((principal.value * (rate.value/1200)*pow(1+ (rate.value/1200),tenure.value * 12))/(pow(1+ (rate.value/1200),tenure.value * 12) -1)).toInt();
}

int getTotalInterest (){
  if(getEmi() == 0){
    return 0;
  }else{
    return (getEmi() * tenure.value * 12 -principal.value).toInt();
  }
}

int getTotalAmount(){
  return (getTotalInterest() + principal.value).toInt();
}

}