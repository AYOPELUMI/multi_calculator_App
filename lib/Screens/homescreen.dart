import 'package:flutter/material.dart';

import '../data/choice.dart';
import '../widgets/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home")
      ),
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child:const Text("Popular Calculator", style:TextStyle(
                fontWeight: FontWeight.bold, fontSize:20)),),
            GridView.builder(
              padding: EdgeInsets.all(10),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: choices.length,
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 8,
            
          ),
              itemBuilder: (choice, index) {
                return Center(
                    child: SelectCard(choice: choices[index]),
                  );
              },
            ),
          ],
        ),
      )));  
  }  
}  

 