import 'package:flutter/material.dart';

BoxDecoration getDecoration(bool selected){
  return BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(30),
    border: Border.fromBorderSide(
      BorderSide(
        width: 2,
        color: selected? Colors.yellow: Colors.grey,
      ),
    ),
  );
}

