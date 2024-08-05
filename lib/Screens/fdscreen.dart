// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculators/Controllers/fdcontroller.dart';
import 'package:calculators/widgets/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constatnts/fdconstant.dart';
import '../widgets/loanDetails.dart';

class FdScreen extends StatelessWidget {
  FdScreen({super.key});
  final FdController controller = Get.put(FdController());
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FdController>(
          builder: (controller) => Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:70, left: 11, right:20),
       child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("FD Calculator", style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )),
          SizedBox(height: 25,),
          Customslider(
            controller : controller.principal.value, 
            onChange: controller.principalOnChanged,
            minValue: FdConstant.minPrincipal,
            maxValue: FdConstant.maxPrincipal,
            division: FdConstant.divisionPrincipal,
            description: FdConstant.descPrincipal,
            symbol: "",),
          Customslider(
            controller : controller.rate.value,
            onChange : controller.rateOnChanged,
            minValue: FdConstant.minRate,
            maxValue: FdConstant.maxRate,
            division: FdConstant.divisionRate,
            description: FdConstant.descRate,
            symbol: "%",),
          Customslider(
            controller : controller.tenure.value,
             onChange: controller.tenureOnChanged,
            minValue: FdConstant.minTenure,
            maxValue: FdConstant.maxTenure,
            division: FdConstant.divisionTenure,
            description: FdConstant.descTenure,
            symbol: "Yr",),
         Container(
          height:180,
           margin: EdgeInsets.only(bottom: 20),
          child: LoanDetails(
            items:[
              [
                "Invested Amount", controller.principal.value,
              ],
              [
            "Est, returns",controller.getFD(),
              ],
              [
                "Total value", controller.getTotalAmount(),
              ]]
          )
         ) ,
         
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