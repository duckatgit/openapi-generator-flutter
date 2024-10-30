import 'package:flutter/material.dart';

InputDecoration textFormFieldInputDecoration({
  required BuildContext context,
}) {
  return const InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 0.6,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 0.6,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 0.6,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 0.6,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 0.6,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    contentPadding: EdgeInsets.only(
      bottom: 0.0,
      left: 10.0,
      right: 10.0,
    ),
    errorStyle: TextStyle(
      color: Colors.red,
    ),
    hintStyle: TextStyle(
      color: Color(0xff7e7d7d),
      fontWeight: FontWeight.normal,
    ),
    labelStyle: TextStyle(
      color: Color(0xff7e7d7d),
    ),
  );
}
