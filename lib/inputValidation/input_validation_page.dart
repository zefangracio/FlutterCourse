import 'package:flutter/material.dart';
import 'package:flutter_app/component/app_bar.dart';

class InputValidation extends StatefulWidget {
  const InputValidation({super.key});
  static const routeName = "/inputValidation/input_validation_page";
  // final ValueChanged<String> onSubmit;

  @override
  State<InputValidation> createState() => _InputValidationState();
}

class _InputValidationState extends State<InputValidation> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  //final _formState = GlobalKey<FormState>();
  var _name = "there!";
  var _email = "";
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  String? get _errorName {
    final text = _nameController.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    // if (text.length < 4) {
    //   return 'Too short';
    // }
    return null;
  }
  String? get _errorEmail {
    final text = _emailController.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    // if (text.length < 4) {
    //   return 'Too short';
    // }
    return null;
  }

  void _submit() {
    // if there is no error text
    if (_errorName == null) {
      // notify the parent widget via the onSubmit callback
      // widget.onSubmit(_controller.value.text);
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBar(
          pageTitle: "Input Validation",
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Hi $_name",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0077B6),
                            fontSize: 16),
                      ),
                      const Text(
                        "Please enter your name and email :)",
                        style: TextStyle(color: Color(0xFF7F7F7F), fontSize: 16),
                      ),
                    ],
                  ),
                ),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "Name",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  TextSpan(
                    text: " *",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFED1C2E),
                    ),
                  ),
                ])),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFF0077B6), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFF0077B6), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Color(0xFF0077B6),
                    ),
                    labelText: 'Enter Your Name...',
                    //hintText: 'Enter Your Name',
                    errorText: _errorName,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Name";
                    }
                    return null;
                  },
                  onChanged: (text) => setState(() => _name),
                ),
                const SizedBox(height: 20,),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "Email",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  TextSpan(
                    text: " *",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFED1C2E),
                    ),
                  ),
                ])),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFF0077B6), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFF0077B6), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Color(0xFF0077B6),
                    ),
                    labelText: 'Enter Your Email...',
                    //hintText: 'Enter Your Name',
                    errorText: _errorEmail,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email";
                    }
                    return null;
                  },
                  onChanged: (text) => setState(() => _email),
                ),
                const SizedBox(height: 100,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.transparent),
                      backgroundColor: const Color.fromRGBO(37, 150, 190, 0.1),
                    ),
                    onPressed: () {
                      if (_nameController.value.text.isNotEmpty && _emailController.value.text.isNotEmpty) {
                        setState(() {
                          _name = _nameController.value.text;
                          _email = _emailController.value.text;
                        });
                        
                      } else {}
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Color(0xFF0077B6)),
                    ),
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
