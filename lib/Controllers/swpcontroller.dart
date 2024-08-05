import 'package:get/get.dart';

class SwpController extends GetxController {
  // Observables for input values
  var principal = 10000.0.obs; // Initial investment amount
  var monthlyWithdrawal = 1000.0.obs; // Monthly withdrawal amount
  var rate = 1.0.obs; // Annual interest rate in percentage
  var tenure = 1.0.obs; // Number of months for the calculation
  var remainingAmount = 0.0.obs; // Remaining amount after withdrawals


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
void monthlyWithdrawalOnChanged(newValue){
  monthlyWithdrawal.value = newValue;
  update();
}
  // Method to calculate the remaining amount after withdrawals
  double getSwp() {
    double investment = principal.value;
    double monthlyWithdrawalAmount = monthlyWithdrawal.value;
    double monthlyInterestRate = rate.value / 100 / 12;
    double months = tenure.value* 12;

    // Calculate remaining amount after withdrawals
    double futureValue = investment;

    for (int i = 0; i < months; i++) {
      futureValue = futureValue * (1 + monthlyInterestRate) - monthlyWithdrawalAmount;
    }

    return remainingAmount.value = futureValue; // Ensure no negative values
  }

  double totalWithdrawal (){
    return monthlyWithdrawal.value * tenure.value* 12;
  }
}