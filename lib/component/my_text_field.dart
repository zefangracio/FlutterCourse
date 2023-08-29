import 'package:flutter/material.dart';

class EmailMyTextField extends StatelessWidget {
  const EmailMyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFF0077B6), width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFF0077B6), width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(
          Icons.email_outlined,
          color: Color(0xFF0077B6),
        ),
        labelText: 'Enter Your Email',
        hintText: 'Enter Your Email',
      ),
      validator: (value){
        if(value!.isEmpty){
          return null;
        }
        return "Email cannot be empty";
      },
    );
  }
}
