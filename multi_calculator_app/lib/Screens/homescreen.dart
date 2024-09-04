import 'package:flutter/material.dart';

import '../choice.dart';
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
              padding: const EdgeInsets.symmetric(vertical: 20),
              child:const Text("Popular Calculator"),),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: choices.length,
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 5,
            
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

 