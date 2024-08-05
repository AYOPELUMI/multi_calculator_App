import 'package:calculators/Screens/calulatorscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Bindings/bindings.dart';
import 'Routes/routes.dart';

// import 'Screens/homescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding : MyBindings(),
      title: 'Multi Calculator',
      getPages: [
        GetPage(name: Routes.EmiScreenRoute, page: () => CalculatorScreen())
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  CalculatorScreen(),
    );
  }
}