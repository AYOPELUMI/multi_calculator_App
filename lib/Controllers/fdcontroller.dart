import 'dart:math';

import 'package:get/get.dart';

class FdController extends GetxController {
  // Observables to hold input values
  var principal = 10000.0.obs; // Principal amount
  var rate = 6.0.obs; // Annual interest rate in percentage
  var tenure = 1.0.obs; // Tenure in years
  var maturity = 0.0.obs; // Maturity amount after interest

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
  // Method to calculate the maturity amount of FD
  double getFD() {
    double annualRate = rate.value / 100;

    // Compound interest formula: A = P * (1 + r/n)^(nt)
    // For FD, interest is compounded yearly, so n = 1
    double amount = principal.value * pow(1 + annualRate, tenure.value) - principal.value;

   return maturity.value = amount;
  }

  double getTotalAmount(){
    return maturity.value + principal.value;
  }
}
