import 'package:flutter/material.dart';

class LoanDetails extends StatelessWidget {
  const LoanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:30, bottom:40),
      child:const Column(
        children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Monthly EMI"),
                  Text("#24,666",)
                ] 
              ),
              SizedBox(height:13),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Monthly EMI"),
                  Text("#24,666",)
                ] 
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Monthly EMI"),
                  Text("#24,666",)
                ] 
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Monthly EMI"),
                  Text("#24,666",)
                ] 
              ),
        ]
      ) ,
    );
  }
}