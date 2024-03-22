import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  const CommonButton(
      {Key? key, this.color, required this.text, required this.onTap})
      : super(key: key);
  final color;
  final text;
  final onTap;
  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: widget.onTap,
      color: widget.color,
      minWidth: width * 0.86,
      height: height * 0.07,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.transparent)),
      child: Text(
        "${widget.text}",
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'SubTitle',
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
