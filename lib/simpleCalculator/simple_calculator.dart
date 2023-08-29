import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/component/app_bar.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  static const routeName = "/simpleCalculator/simple_calculator";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   Menu.routeName: (context) => const Menu(),
      //   DummyPage.routeName :(context) => const DummyPage(),
      //   TabViewPage.routeName:(context) =>  const TabViewPage(),
      //   CalculatorApp.routeName:(BuildContext context) => const  CalculatorApp(),
      //   InputValidation.routeName:(context) => const InputValidation()
      // },
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _display = "...";
  double _firstNumber = 0.0;
  double _secondNumber = 0.0;
  String _operation = "+";
  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  void _onOperationPressed(String operation) {
    setState(() {
      _operation = operation;
    });
  }

  void _onEqualsPressed() {
    setState(() {
      if (_operation == "+") {
        _display = (_firstNumber + _secondNumber).toString();
        print(_display);
      } else if (_operation == "-") {
        _display = (_firstNumber - _secondNumber).toString();
      } else if (_operation == "*") {
        _display = (_firstNumber * _secondNumber).toString();
      } else if (_operation == "/") {
        _display = (_firstNumber / _secondNumber).toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(pageTitle: "SimpleCalculator"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "choose type".toUpperCase(),
                style: const TextStyle(
                    color: Color(0xFF2CD483),
                    fontSize: 13,
                    fontWeight: FontWeight.w900),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(24, 255, 255, 255),
                              ),
                              onPressed: () => _onOperationPressed("+"),
                              child: const Text(
                                "Add",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(24, 255, 255, 255),
                              ),
                              onPressed: () => _onOperationPressed("-"),
                              child: const Text(
                                "Substract",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(24, 255, 255, 255),
                              ),
                              onPressed: () => _onOperationPressed("*"),
                              child: const Text(
                                "Multiply",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(24, 255, 255, 255),
                              ),
                              onPressed: () => _onOperationPressed("/"),
                              child: const Text(
                                "Divide",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextField(
                        controller: _firstController,
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF0077B6), width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF0077B6), width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        style: const TextStyle(fontSize: 25),
                        onChanged: (text) => setState(() => _firstController),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "$_operation",
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextField(
                        controller: _secondController,
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF0077B6), width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF0077B6), width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        style: const TextStyle(fontSize: 25),
                        onChanged: (text) => setState(() => _secondNumber),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: const Text(
                      "=",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    child: Text(
                      "$_display",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "History".toUpperCase(),
                style: const TextStyle(
                    color: Color(0xFF2CD483),
                    fontSize: 13,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    width: 1.5,
                    color: Color(0xFFEBEBEB),
                  )),
                ),
                child: Row(
                  children: [
                    Text("$_firstNumber $_operation $_secondNumber", style: TextStyle(fontSize: 30),)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.transparent),
                    backgroundColor: const Color.fromRGBO(37, 150, 190, 0.1),
                  ),
                  onPressed: () {
                    if (_firstController.value.text.isNotEmpty &&
                        _secondController.value.text.isNotEmpty) {
                      setState(() {
                        _firstNumber =
                            double.parse(_firstController.value.text);
                        _secondNumber =
                            double.parse(_secondController.value.text);
                        // print(_firstNumber);
                        // print(_secondNumber);
                        _onEqualsPressed();
                      });
                    } else {}
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(color: Color(0xFF0077B6)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
