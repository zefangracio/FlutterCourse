import 'package:flutter/material.dart';
import 'package:flutter_app/dummyUI/dummy_page.dart';
import 'package:flutter_app/dummyUI/simple_calculator.dart';
import 'package:flutter_app/dummyUI/tab_view_page.dart';
import 'package:flutter_app/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Menu(),
      initialRoute: './menu',
      routes: {
        Menu.routeName : (context) => const Menu(),
        DummyPage.routeName :(context) => const DummyPage(),
        TabViewPage.routeName:(context) =>  const TabViewPage(),
        CalculatorApp.routeName:(BuildContext context) => const  CalculatorApp()
      },
    );
  }
}
