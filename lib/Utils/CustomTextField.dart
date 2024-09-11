import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final IconData icon;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? labelStyle;
  final Color? borderColor;
  final double borderRadius;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.label,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    required this.icon,
    this.controller,
    this.textStyle,
    this.labelStyle,
    this.borderColor,
    this.borderRadius = 10.0,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      style: textStyle ??
          TextStyle(
            color: Color(0xFFC9C9C9),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
      cursorColor: Color(0xFFC9C9C9),
      decoration: InputDecoration(
        label: Text(
          label,
          style: labelStyle ??
              TextStyle(
                color: Color(0xFFC9C9C9),
              ),
        ),
        hintText: hintText,
        hintStyle: labelStyle ??
            TextStyle(
              color: Color(0xFFC9C9C9),
            ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        prefixIcon: Icon(
          icon,
          color: Color(0xFFC9C9C9),
        ),
      ),
    );
  }
}
