import 'package:flutter/material.dart';
import 'package:flutter_app/dummyUI/dummy_page.dart';
import 'package:flutter_app/dummyUI/tab_view_page.dart';
import 'package:flutter_app/menu.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  static const routeName = "/calculator";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Simple Calculator',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      routes: {
        Menu.routeName: (context) => const Menu(),
        DummyPage.routeName :(context) => const DummyPage(),
        TabViewPage.routeName:(context) =>  const TabViewPage(),
        CalculatorApp.routeName:(BuildContext context) => const  CalculatorApp()
      },
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _display = '0';
  double _firstNumber = 0.0;
  double _secondNumber = 0.0;
  String _operation = "";

  void _onNumberPressed(String number) {
    setState(() {
      _display += number;
    });
  }

  void _onOperationPressed(String operation) {
    setState(() {
      _firstNumber = double.parse(_display);
      _operation = operation;
      _display = '';
      print(_operation);
      print(_firstNumber);
    });
  }

  void _onEqualsPressed() {
    setState(() {
      _secondNumber = double.parse(_display);
      if (_operation == '+') {
        _display = (_firstNumber + _secondNumber).toString();
      } else if (_operation == '-') {
        _display = (_firstNumber - _secondNumber).toString();
      } else if (_operation == '*') {
        _display = (_firstNumber * _secondNumber).toString();
      } else if (_operation == '/') {
        _display = (_firstNumber / _secondNumber).toString();
      }
      _firstNumber = 0.0;
      _secondNumber = 0.0;
      _operation = "";
    });
  }

  void _onClearPressed() {
    setState(() {
      _display = '';
      _firstNumber = 0.0;
      _secondNumber = 0.0;
      _operation = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Calculator',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed(Menu.routeName),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
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
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(24, 255, 255, 255),
                            ),
                            onPressed: () => _onOperationPressed("+"),
                            child: const Text(
                              "Add",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(24, 255, 255, 255),
                            ),
                            onPressed: () => _onOperationPressed("-"),
                            child: const Text(
                              "Substract",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(24, 255, 255, 255),
                            ),
                            onPressed: () => _onOperationPressed("*"),
                            child: const Text(
                              "Multiply",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(24, 255, 255, 255),
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
            Text(
              "History".toUpperCase(),
              style: const TextStyle(
                  color: Color(0xFF2CD483),
                  fontSize: 13,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}      
