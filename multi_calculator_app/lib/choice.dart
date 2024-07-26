
import 'package:flutter/material.dart';

class Choice {  
  const Choice({required this.title, required this.icon});  
  final String title;  
  final IconData icon;  
}  
  
const List<Choice> choices = <Choice>[  
  Choice(title: 'SIP Calculator', icon: Icons.home),  
  Choice(title: 'Loan Calculator', icon: Icons.contacts),  
  Choice(title: 'SWP Calculator', icon: Icons.map),  
  Choice(title: 'FD Calculator', icon: Icons.phone),  
  Choice(title: 'RD Calculator', icon: Icons.camera_alt),  
  Choice(title: 'EMI Calculator', icon: Icons.settings),  
  Choice(title: 'EPF Calculator', icon: Icons.photo_album),  
  Choice(title: 'Income Tax Calculator', icon: Icons.wifi), 
  Choice(title: 'PPF Calculator', icon: Icons.camera_alt),  
  Choice(title: 'GST Calculator', icon: Icons.settings),  
  Choice(title: 'Mutual Fund Returns Calculator', icon: Icons.photo_album),  
  Choice(title: 'Sukanya Samriddhi Yojana  Calculator', icon: Icons.wifi) 
]; 