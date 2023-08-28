// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/strings.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? textController;
  const CustomTextField({
    super.key,
    this.textController,
    required this.hintText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
