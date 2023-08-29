import 'package:flutter/material.dart';
import 'package:flutter_app/dummyUI/dummy_page.dart';
import 'package:flutter_app/inputValidation/input_validation_page.dart';
import 'package:flutter_app/simpleCalculator/simple_calculator.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  static const routeName = "/lib/menu.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 12, bottom: 10),
                        child: const Text(
                          "Choose Section",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(DummyPage.routeName);
                        },
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 15, top: 8),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dummy UI",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF0077B6),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Practice flutter UI and get familiar with UI Widgets",
                                      style: TextStyle(
                                          color: Color(0xFF7F7F7F),
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(CalculatorApp.routeName);
                        },
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 15, top: 8),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Simple Calculator",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF0077B6),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Creating calculator app that consists add, divide, substract, multiply function",
                                      style: TextStyle(
                                          color: Color(0xFF7F7F7F),
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                            
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(InputValidation.routeName);
                        },
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 15, top: 8),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Input Validation",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF0077B6),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Play around with email input & password input",
                                      style: TextStyle(
                                          color: Color(0xFF7F7F7F),
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
