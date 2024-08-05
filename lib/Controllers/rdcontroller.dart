import 'dart:math';

import 'package:get/get.dart';

class RdController extends GetxController {
  // Variables for monthly deposit, rate of interest, and time period (in months)
  var principal = 1000.0.obs;
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

 double getRD() {

    double r = rate.value / 100 / 12; 
    double n = 12;
    double t = tenure.value; 

    double maturityAmount = principal.value * (pow((1 + r), (n * t)) -1)/(1 - pow((1 + r), (-1))) - principal.value*tenure.value*12;

    return maturityAmount;
  }

  double getTotalAmount(){
    return  getRD() + getTotalPrincipal();
  }
  double getTotalPrincipal(){
    return principal.value*tenure.value * 12;
  }
}
