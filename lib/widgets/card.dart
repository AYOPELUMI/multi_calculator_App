import 'package:flutter/material.dart';

class SelectCard extends StatelessWidget {
  final choice;
  
  const SelectCard({key, required this.choice}) : super(key: key);  
 
  
  @override  
  Widget build(BuildContext context) {  
      
    return Card(  
        color: const Color(0xFFEAF4F4),
        elevation: 5,
        child: Center(child:
        Container(
          padding : const EdgeInsets.all(7),
        child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[  
              Image.asset(choice.icon, width:30, height:30),
              const SizedBox(height: 5,),  
              Text(choice.title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xFF4E5252)
              ),),  
            ]  
        ),  
        )  )
    );  
  }  
}  