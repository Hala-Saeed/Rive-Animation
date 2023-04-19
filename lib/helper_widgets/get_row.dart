import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getRow(String text, var icon){
  return Padding(
    padding: const EdgeInsets.only(bottom: 18),
    child: Row(
      children: [
        FaIcon(icon, color: Colors.yellow,),
        const SizedBox(width: 20,),
        Text(text,style: const TextStyle(fontSize: 18,color: Colors.white),),
      ],
    ),
  );

}//END OF GET_ROW