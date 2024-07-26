import 'package:flutter/material.dart';

class SelectCard extends StatelessWidget {
  final choice;
  
  const SelectCard({key, required this.choice}) : super(key: key);  
 
  
  @override  
  Widget build(BuildContext context) {  
      
    return Card(  
        color: Color(0xFFEAF4F4),
        child: Center(child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: <Widget>[  
              Expanded(child: Icon(choice.icon, size:50.0)),  
              Text(choice.title),  
            ]  
        ),  
        )  
    );  
  }  
}  