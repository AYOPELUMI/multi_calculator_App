import 'package:flutter/material.dart';

class LoanDetails extends StatelessWidget {
  const LoanDetails({
    super.key,
    required this.emiValue,
    required this.interest,
    required this.principal,
    required this.totalAmount});

  final principal , totalAmount, emiValue, interest;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:30, bottom:40),
      child: Column(
        children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Monthly EMI"),
                  Text('${emiValue}')
                ] 
              ),
              SizedBox(height:13),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Principal Amount"),
                  Text('$principal',)
                ] 
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Total Interest"),
                  Text('$interest',)
                ] 
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Total Amount"),
                  Text('$totalAmount',)
                ] 
              ),
        ]
      ) ,
    );
  }
}