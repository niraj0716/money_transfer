import 'package:flutter/material.dart';

class CommonTextFormField extends StatefulWidget {
  const CommonTextFormField(
      {Key? key,
      this.lable,
      this.controller,
      this.validator,
      this.prefixIcon,
      this.suffixIcon,
      required this.obscureText})
      : super(key: key);
  final lable;
  final controller;
  final validator;
  final prefixIcon;
  final suffixIcon;
  final obscureText;
  @override
  State<CommonTextFormField> createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.obscureText,
      style: TextStyle(
          color: Colors.black54,
          fontSize: 13,
          letterSpacing: 1,
          fontWeight: FontWeight.w500,
          fontFamily: 'SubTitle'),
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          contentPadding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
          labelText: widget.lable,
          labelStyle: TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              fontFamily: "SubTitle"),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: Colors.black38,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: Colors.black,
              ))),
    );
  }
}
