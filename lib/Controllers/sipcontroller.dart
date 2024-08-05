import 'dart:math';

import 'package:get/get.dart';

class SipController extends GetxController {
  // Observables to hold input values and calculated result
  var monthlyPrincipal = 0.0.obs;
  var rate = 1.0.obs;
  var tenure = 1.0.obs;
  var expectedReturns = 0.0.obs;

  // Method to calculate SIP future valu
  // 
  void principalOnChanged(newValue){
  monthlyPrincipal.value = newValue.toDouble();
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

  double getPrincipal(){
    return monthlyPrincipal.value * tenure.value * 12; 
  }

  double getSip() {
    double m = monthlyPrincipal.value;
    double r = rate.value /1200; // Monthly interest rate
    double n = tenure.value * 12;

    if (r == 0) {
   return   expectedReturns.value = m * n; // No interest case
    } else {
    return  expectedReturns.value = ((m * (((pow(1+r, n) - 1) / r) * (1 + r))) - getPrincipal());
    }
  }

double getTotalAmount(){
  return getPrincipal() + expectedReturns.value;
}

}
