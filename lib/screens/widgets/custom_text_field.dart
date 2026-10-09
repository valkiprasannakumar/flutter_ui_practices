import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this._controller,
    required this.label,
    required this.hinttext,
    required this.prefixIcon,
  });

  final TextEditingController _controller;
  final String label;
  final String hinttext;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: label,
        hintText: hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
