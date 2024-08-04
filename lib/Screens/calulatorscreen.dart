// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/emicontroller.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/loanDetails.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmiController>(
          init: Get.find<EmiController>(),
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
          Customslider(controller : controller.principal.value, onChanged: controller.principalOnChanged,),
          Customslider(controller : controller.rate.value, onChanged : controller.rateOnChanged),
          Customslider(controller : controller.tenure.value, onChanged: controller.tenureOnChanged),
          LoanDetails(),
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