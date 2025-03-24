import 'package:flutter/material.dart';
import 'package:my_portfolio/src/config/color/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final int? minLines;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final String? Function(String?)? validate;
  const CustomTextField({
    super.key,
    this.controller,
    this.labelText,
    this.minLines,
    this.hintText,
    this.borderColor,
    this.keyboardType,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: minLines,
      keyboardType: keyboardType,
      validator: validate,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: AppColor.black),
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColor.black),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor!, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor!, width: 2.0),
        ),
        alignLabelWithHint: true,
        isDense: true,
      ),
    );
  }
}
