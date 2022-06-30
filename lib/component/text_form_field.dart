import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    Key? key,
    required this.controller,
    required this.inputType,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    required this.label,
    required this.hint,
  }) : super(key: key);
  final TextEditingController controller;
  final TextInputType inputType;
  bool isPassword;
  final String label;
  final String hint;
  Widget? prefixIcon;
  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: label,

        // label: Text(label,textAlign: TextAlign.start),
        hintText: hint,

        border:const OutlineInputBorder(),
      ),
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      keyboardType: inputType,
      obscureText: isPassword,
    );
  }
}
