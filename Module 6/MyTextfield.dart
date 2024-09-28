import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  TextEditingController? controller;
  String? label;
  String? hintText;
  Widget? SuffixButton;

  Mytextfield(
      {required this.controller, required this.hintText, required this.label,this.SuffixButton});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(),
        suffix: SuffixButton,
      ),
      obscureText: label == "Password" ? true : false,
    );
  }
}
