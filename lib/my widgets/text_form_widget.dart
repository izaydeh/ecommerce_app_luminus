import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.hintText,
    required this.lableText,
    required this.iconPath,
    this.endPadding = 25.0,
    this.obsecureText = false,
    required this.controller,
    required this.validator,
    this.inputType,
  });

  final String hintText;
  final String lableText;
  final String iconPath;
  final double endPadding;
  final bool obsecureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: inputType,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: const Color.fromARGB(255, 115, 114, 114)),
        labelText: lableText,
        labelStyle: TextStyle(color: Color.fromARGB(255, 115, 114, 114)),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        suffixIcon: Padding(
          padding: EdgeInsetsDirectional.only(end: endPadding),
          child: SvgPicture.asset(iconPath),
        ),

        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 115, 114, 114),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrangeAccent),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
