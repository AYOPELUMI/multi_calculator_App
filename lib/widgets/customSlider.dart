import 'package:flutter/material.dart';

import '../utils/constants/color.dart';
import '../utils/constants/formatter.dart';

// ignore: must_be_immutable
class Customslider extends StatelessWidget {
  Customslider({
    required this.controller,
    required this.onChange,
    this.minValue = 0.0,
    this.maxValue = 100.0,
    required this.division,
    required this.description,
    required this.symbol
    });

  double controller;
  final double minValue;
  final double maxValue;
  late void Function(double) onChange;
  final int division;
  String description;
  String symbol;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children:[
            Text(description, style:TextStyle(
              fontSize:13,
              color: Colors.black,
              fontWeight: FontWeight.w400
            )),
            Container(
              padding: EdgeInsets.only(bottom:2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
            child: Text(symbol !="" ?'${controller.round().toString()} $symbol' : NairaFormatter.format(controller),
            textAlign: TextAlign.center,
           style: TextStyle(
              color: secondaryColor
            ))
            )
          ]
        ),
        Slider(
          value: controller.toDouble(),
          min: minValue,
          divisions:(maxValue-minValue).toInt(),
          thumbColor:whiteBg,
          activeColor: secondaryColor,
          inactiveColor:thirdColor,
          max: maxValue,
          onChanged:(value){
            onChange(value);
          }
        )
      ]
    ));
  }
}