// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/rdcontroller.dart';
import 'package:calculators/widgets/buttons.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/RdConstant.dart';
import '../widgets/loanDetails.dart';

class RdScreen extends StatelessWidget {
  RdScreen({super.key});
  final RdController controller = Get.put(RdController());
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RdController>(
          builder: (controller) => Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:70, left: 11, right:20),
       child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("RD Calculator", style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )),
          SizedBox(height: 25,),
          Customslider(
            controller : controller.principal.value, 
            onChange: controller.principalOnChanged,
            minValue: RdConstant.minPrincipal,
            maxValue: RdConstant.maxPrincipal,
            division: RdConstant.divisionPrincipal,
            description: RdConstant.descPrincipal,
            symbol: "",),
          Customslider(
            controller : controller.rate.value,
            onChange : controller.rateOnChanged,
            minValue: RdConstant.minRate,
            maxValue: RdConstant.maxRate,
            division: RdConstant.divisionRate,
            description: RdConstant.descRate,
            symbol: "%",),
          Customslider(
            controller : controller.tenure.value,
             onChange: controller.tenureOnChanged,
            minValue: RdConstant.minTenure,
            maxValue: RdConstant.maxTenure,
            division: RdConstant.divisionTenure,
            description: RdConstant.descTenure,
            symbol: "Yr",),
         Container(
          height:180,
           margin: EdgeInsets.only(bottom: 20),
          child: LoanDetails(
            items:[
              [
                "Invested Amount", controller.getTotalPrincipal(),
              ],
              [
            "Est, returns",controller.getRD(),
              ],
              [
                "Total value", controller.getTotalAmount(),
              ]]
          )
          ),
          ButtonWidget(item:[
            "Est, returns",controller.getRD(),
              ],)
        ],
      ))
    ));
  }
}