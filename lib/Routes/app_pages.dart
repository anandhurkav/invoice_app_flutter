import 'package:flutter/material.dart';
import 'package:invoice_app_flutter/Routes/app_routes.dart';
import 'package:invoice_app_flutter/Screens/fourthscreen.dart';
import '../Screens/firstscreen.dart';
import '../Screens/second_screen.dart';
import '../Screens/third_screen.dart';

class AppPages {
  static const initialRoute = Routes.homeRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.homeRoute: (context) => const FirstScreen(),
    // Routes.homeRoute: (context) => const SecondScreen(),
    // Routes.homeRoute: (context) => const ThirdScreen(),
    // Routes.homeRoute: (context) => const FourthScreen()
  };
}
