import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customslider extends StatelessWidget {
  Customslider({super.key,required this.controller,required this.onChange, this.minValue, this.maxValue, this.divisionsValue});

  double controller;
  final minValue;
  final maxValue;
  final divisionsValue;
  late void Function(double) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children:[
            Text("Loan Amount", style:TextStyle(
              fontSize:13,
              color: Colors.black,
              fontWeight: FontWeight.w400
            )),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFFEBF6F9),
                borderRadius: BorderRadius.circular(5),
              ),
            child: Text(controller.toString(),
            textAlign: TextAlign.center,
           style: TextStyle(
              color: Color(0xFF28ADAB)
            ))
            )
          ]
        ),
        Slider(
          value: controller,
          min: minValue,
          divisions:divisionsValue,
          thumbColor:Colors.white,
          activeColor: Color(0xFF28ADAB),
          inactiveColor:Color(0xFFE8E8EA),
          max: maxValue,
          onChanged:(value){
            onChange(value);
          },
            onChangeStart: (double value) {
        print('Started change at $value');
            onChange(value);

      },
      onChangeEnd: (double value) {
        print('Ended change at $value');
            onChange(value);

      },
        )
      ]
    ));
  }
}