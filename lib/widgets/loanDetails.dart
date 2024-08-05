import 'package:calculators/utils/constatnts/formatter.dart';
import 'package:flutter/material.dart';

class LoanDetails extends StatelessWidget {
  const LoanDetails({
    super.key,
    required this.items});

  final items;

  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return Card(
              elevation: 0,
              margin: EdgeInsets.only(bottom: 8.0, top:8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: BorderSide.none, // Remove border
              ),
              clipBehavior: Clip.antiAlias,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(items[index][0]),
                  Text('${NairaFormatter.format(items[index][1])}')
                ] 
              ));
              })
              );
  }
}