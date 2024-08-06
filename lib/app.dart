import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Bindings/bindings.dart';
import 'Routes/routes.dart';
import 'Screens/calculatorscreen.dart';
import 'Screens/fdscreen.dart';
import 'Screens/homescreen.dart';
import 'Screens/rdscreen.dart';
import 'Screens/sipscreen.dart';
import 'Screens/swpscreen.dart';


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
        GetPage(name: Routes.emiScreenRoute, page: () => CalculatorScreen()),
        GetPage(name: Routes.fdScreenRoute, page: () => FdScreen()),
        GetPage(name: Routes.rdScreenRoute, page: () => RdScreen()),
        GetPage(name:Routes.sipScreenRoute, page: () => SipScreen()),
        GetPage(name: Routes.swpScreenRoute, page: () => SwpScreen())
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomeScreen(),
    );
  }
}