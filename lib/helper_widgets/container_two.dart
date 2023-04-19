import 'package:flutter/material.dart';
import 'container_decoration.dart';
import 'text_styles.dart';

Widget getAnimatedContainerTwo(String duration, String trial, String price, bool selected){
  return AnimatedContainer(
    duration: const Duration(seconds: 1),
    width: 360,
    height: selected? 75: 80,
    curve: Curves.fastOutSlowIn,
    decoration: getDecoration(selected),
    child: Padding(
      padding: const EdgeInsets.only(top: 7, bottom: 7,left: 35, right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text(duration, style: getTextStyleWhite()),
          ),

          //NOT WORKING
          // Divider(
          //   color: Colors.yellow,
          //   height: 5,
          //   thickness: 5,
          // ),

          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                selected? Text('\$$price', style: getTextStyleWhite()):
                Text('\$$price', style: getTextStyleYellow()),

                selected? Text(trial, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.yellow),):
                Text(trial, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.yellow),),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}// END OF CONTAINER