import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  static const routeName = "/calculator";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _display = '';
  double _firstNumber = 0;
  double _secondNumber = 0;
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
      _firstNumber = 0;
      _secondNumber = 0;
      _operation = "";
    });
  }

  void _onClearPressed() {
    setState(() {
      _display = '';
      _firstNumber = 0;
      _secondNumber = 0;
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
          onPressed: () => Navigator.of(context).pop(),
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
                    child: Expanded(
                      child: Row(
                        children: [
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(24, 255, 255, 255),
                              ),
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
                              child: const Text(
                                "Divide",
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
                              onPressed: () {},
                              child: const Text(
                                "Substract",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )),
                        ],
                      ),
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
//       Column(
//         children: [
//           Expanded(
//             child: Container(
//               alignment: Alignment.bottomRight,
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 _display,
//                 style: TextStyle(fontSize: 32.0),
//               ),
//             ),
//           ),
//           Row(
//             children: [
//               _buildButton('7'),
//               _buildButton('8'),
//               _buildButton('9'),
//               _buildOperationButton('/'),
//             ],
//           ),
//           Row(
//             children: [
//               _buildButton('4'),
//               _buildButton('5'),
//               _buildButton('6'),
//               _buildOperationButton('*'),
//             ],
//           ),
//           Row(
//             children: [
//               _buildButton('1'),
//               _buildButton('2'),
//               _buildButton('3'),
//               _buildOperationButton('-'),
//             ],
//           ),
//           Row(
//             children: [
//               _buildButton('0'),
//               _buildButton('.'),
//               _buildEqualsButton(),
//               _buildOperationButton('+'),
//             ],
//           ),
//           Row(
//             children: [
//               _buildClearButton(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildButton(String text) {
//     return Expanded(
//       child: TextButton(
//         onPressed: () => _onNumberPressed(text),
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//     );
//   }

//   Widget _buildOperationButton(String text) {
//     return Expanded(
//       child: TextButton(
//         onPressed: () => _onOperationPressed(text),
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 24.0, color: Colors.blue),
//         ),
//       ),
//     );
//   }

//   Widget _buildEqualsButton() {
//     return Expanded(
//       child: TextButton(
//         onPressed: _onEqualsPressed,
//         child: Text(
//           '=',
//           style: TextStyle(fontSize: 24.0, color: Colors.green),
//         ),
//       ),
//     );
//   }

//   Widget _buildClearButton() {
//     return Expanded(
//       child: TextButton(
//         onPressed: _onClearPressed,
//         child: Text(
//           'C',
//           style: TextStyle(fontSize: 24.0, color: Colors.red),
//         ),
//       ),
//     );
//   }
// }
