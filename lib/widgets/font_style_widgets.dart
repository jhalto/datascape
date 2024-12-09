

import 'package:flutter/material.dart';

myStyle([double? fs, Color? clr,FontWeight? fw]){
  return TextStyle(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}
h1Title(){
  return const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 50,
  );
}
taskRecordTitle(){
  return const TextStyle(
     fontWeight: FontWeight.bold,
    fontSize: 14,
  );
}