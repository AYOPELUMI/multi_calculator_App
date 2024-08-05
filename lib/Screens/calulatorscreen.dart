// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/emicontroller.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constatnts/emiConstant.dart';
import '../widgets/loanDetails.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});
  final EmiController controller = Get.put(EmiController());
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmiController>(
          builder: (controller) => Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:70, left: 20, right:20),
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
            description: EmiConstant.descPrincipal,
            symbol: "#",),
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
          LoanDetails(emiValue: controller.getEmi(),
          principal : controller.principal.value,
          interest: controller.getTotalInterest(),
          totalAmount: controller.getTotalAmount()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              TextButton.icon(
    style: TextButton.styleFrom(
      textStyle: TextStyle(color:Colors.white ),
      backgroundColor: Color(0xFF28ADAB),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ), 
    ),
    onPressed: () => {},
    icon: Icon(Icons.share_outlined,color:Colors.white),
    label: Text('share',style: TextStyle(color:Colors.white)),
  ),
  SizedBox(width:40),
  TextButton(
    style: TextButton.styleFrom(
      textStyle: TextStyle(color: Colors.white),
      backgroundColor: Color(0xFF28ADAB),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ), 
    ),
    onPressed: () => {},
    child: Text('save as PDF',style: TextStyle(color: Colors.white),),
  ),
            ]
          )

        ],
      ))
    ));
  }
}