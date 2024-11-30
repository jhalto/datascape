

import 'package:flutter/material.dart';

myStyle([double? fs, Color? clr,FontWeight? fw]){
  return TextStyle(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}
h1Title(){
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 50,
  );
}