import 'package:flutter/material.dart';

final defaultInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.grey.withOpacity(0.01),
  contentPadding: const EdgeInsets.only(left: 10.0),
  hintStyle: const TextStyle(
    fontSize: 14,
  ),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    gapPadding: 4.0,
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(
      color: Colors.teal.shade200,
    ),
  );
}

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
