// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import '../util/style.dart';

class MyTextField extends StatefulWidget {
  TextEditingController controller;
  String hintText;
  TextInputType? keyBordType;
  VoidCallback? onchanges;

  MyTextField({
    required this.controller,
    required this.hintText,
    this.keyBordType,
    this.onchanges,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        setState(() {});
      },
      keyboardType: widget.keyBordType,
      cursorColor: Colors.black,
      controller: widget.controller,
      style: smallBold,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1),
        contentPadding: EdgeInsets.only(left: 10),
        focusColor: Colors.grey.withOpacity(0.1),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
