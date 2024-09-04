// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/sipcontroller.dart';
import 'package:calculators/widgets/buttons.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/sipconstant.dart';
import '../widgets/loanDetails.dart';


class SipScreen extends StatelessWidget {
  SipScreen({super.key});
  final SipController controller = Get.put(SipController());
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SipController>(
          builder: (controller) => Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:70, left: 20, right:20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("SIP Calculator", style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )),
          SizedBox(height: 25,),
          Customslider(
            controller : controller.monthlyPrincipal.value, 
            onChange: controller.principalOnChanged,
            minValue: SipConstant.minPrincipal,
            maxValue: SipConstant.maxPrincipal,
            division: SipConstant.divisionPrincipal,
            description: "Monthly Investments",
            symbol: "",),
          Customslider(
            controller : controller.rate.value,
            onChange : controller.rateOnChanged,
            minValue: SipConstant.minRate,
            maxValue: SipConstant.maxRate,
            division: SipConstant.divisionRate,
            description: SipConstant.descRate,
            symbol: "%",),
          Customslider(
            controller : controller.tenure.value,
             onChange: controller.tenureOnChanged,
            minValue: SipConstant.minTenure,
            maxValue: SipConstant.maxTenure,
            division: SipConstant.divisionTenure,
            description: SipConstant.descTenure,
            symbol: "Yr",),
          Container(
            height:180,
           margin: EdgeInsets.only(bottom: 20),
            child:LoanDetails(
              items:[
                [
                  "Invested Amount", controller.getPrincipal(),
                ],
                ["Est returns",controller.getSip()
                ],
                [
                  "Total Value", controller.getTotalAmount(),
                ]
              ]
            )
          ),
          ButtonWidget(item:["Est return",controller.getSip()
                ])
        ],
      ))
    ));
  }
}