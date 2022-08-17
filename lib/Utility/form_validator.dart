
import 'package:flutter/cupertino.dart';

String? validatePassword(String? txt) {
  if (txt == null || txt.isEmpty) {
    return "Enter Your Password!";
  }
  if (txt.length < 8) {
    return "Password must has 8 characters";
  }
  if (!txt.contains(RegExp(r'[A-Z]'))) {
    return "Password must has uppercase";
  }
  if (!txt.contains(RegExp(r'[0-9]'))) {
    return "Password must has digits";
  }
  if (!txt.contains(RegExp(r'[a-z]'))) {
    return "Password must has lowercase";
  }
  if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
    return "Password must has special characters";
  }

    return null;
}

String? validateEmail(String value) {
  String _msg;
  RegExp regex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  if (value.isEmpty) {
    return _msg = "Enter Your Email Address!";
  } else if (!regex.hasMatch(value)) {
    return _msg = "Enter a valid Email Address!";
  }
  return null;
}

String? validatePhoneNumber(String number){
  if(number == null||number.isEmpty) {
    return "Enter Your Phone Number!";
  }
  if(number.length < 11 || number.length > 11)
    {
      return "Enter Valid Phone Number!";
    }
  return null;
}

String? validateRequiredFields({required String value, required String fieldName}){
  if(value == null||value.isEmpty){
    return "Enter Your $fieldName!";
  }
  return null;
}

String? validateDropDownField (String value){
  if(value == null||value.isEmpty){
    return "Select Your Country!";
  }
  return null;
}