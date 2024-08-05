// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/swpcontroller.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constatnts/swpconstant.dart';
import '../widgets/loanDetails.dart';

class SwpScreen extends StatelessWidget {
  SwpScreen({super.key});
  final SwpController controller = Get.put(SwpController());
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SwpController>(
          builder: (controller) => Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:70, left: 20, right:20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("SWP Calculator", style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )),
          SizedBox(height: 25,),
          Customslider(
            controller : controller.principal.value, 
            onChange: controller.principalOnChanged,
            minValue: SwpConstant.minPrincipal,
            maxValue: SwpConstant.maxPrincipal,
            division: SwpConstant.divisionPrincipal,
            description: "Total Investments",
            symbol: "",),
          Customslider(
            controller : controller.monthlyWithdrawal.value,
             onChange: controller.monthlyWithdrawalOnChanged,
            minValue: SwpConstant.minMonthlyWithdrawal,
            maxValue: SwpConstant.maxMonthlyWithdrawal,
            division: SwpConstant.divisionMonthlyWithdrawal,
            description: SwpConstant.descMonthlyWithdrawal,
            symbol: "",),
          Customslider(
            controller : controller.rate.value,
            onChange : controller.rateOnChanged,
            minValue: SwpConstant.minRate,
            maxValue: SwpConstant.maxRate,
            division: SwpConstant.divisionRate,
            description: SwpConstant.descRate,
            symbol: "%",),
          Customslider(
            controller : controller.tenure.value,
             onChange: controller.tenureOnChanged,
            minValue: SwpConstant.minTenure,
            maxValue: SwpConstant.maxTenure,
            division: SwpConstant.divisionTenure,
            description: SwpConstant.descTenure,
            symbol: "Yr",),
          Container(
            height:180,
           margin: EdgeInsets.only(bottom: 20),
            child:LoanDetails(
              items:[
                [
                  "Invested Amount", controller.principal.value,
                ],
                [
                  "Total withdrawal", controller.totalWithdrawal(),
                ],
                ["Final Value",controller.getSwp()
                ],
              ]
            )
          ),
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