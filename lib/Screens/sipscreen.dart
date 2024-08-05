// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/sipcontroller.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constatnts/SipConstant.dart';
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
          Text("Loan Calculator", style: TextStyle(
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
                ["Est return",controller.getSip()
                ],
                [
                  "Total Value", controller.getTotalAmount(),
                ]
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