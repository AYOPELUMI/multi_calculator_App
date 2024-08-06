// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/emicontroller.dart';
import 'package:calculators/widgets/buttons.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/emiConstant.dart';
import '../widgets/loanDetails.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});
  final EmiController controller = Get.put(EmiController());
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmiController>(
          builder: (controller) => Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:70, left: 11, right:20),
       child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Loan Calculator", style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )),
          SizedBox(height: 25,),
          Customslider(
            controller : controller.principal.value, 
            onChange: controller.principalOnChanged,
            minValue: EmiConstant.minPrincipal,
            maxValue: EmiConstant.maxPrincipal,
            division: EmiConstant.divisionPrincipal,
            description: "Loan Amount",
            symbol: "",),
          Customslider(
            controller : controller.rate.value,
            onChange : controller.rateOnChanged,
            minValue: EmiConstant.minRate,
            maxValue: EmiConstant.maxRate,
            division: EmiConstant.divisionRate,
            description: EmiConstant.descRate,
            symbol: "%",),
          Customslider(
            controller : controller.tenure.value,
             onChange: controller.tenureOnChanged,
            minValue: EmiConstant.minTenure,
            maxValue: EmiConstant.maxTenure,
            division: EmiConstant.divisionTenure,
            description: EmiConstant.descTenure,
            symbol: "Yr",),
         Container(
          height:180,
           margin: EdgeInsets.only(bottom: 20),
          child: LoanDetails(
            items:[
              [
            "Monthly EMI",controller.getEmi(),
              ],
              [
                "Principal Amount", controller.principal.value,
              ],
              [
                "Total Interest" ,controller.getTotalInterest(),
              ],
              [
                "Total Amount", controller.getTotalAmount(),
              ]]
          )
          ),
          ButtonWidget(item:[
                "Total Interest" ,controller.getTotalInterest(),
              ],)
        ],
      ))
    ));
  }
}