import 'package:flutter/material.dart';
import 'package:rive_animation/helper_widgets/text_styles.dart';

import 'container_decoration.dart';

Widget getAnimatedContainer(String duration, String trial, String price, bool selected){
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(duration, style: getTextStyleWhite()),
              ),
              Text(trial, style: const TextStyle(fontSize: 15, letterSpacing: 1,color: Colors.white),),
            ],
          ),

          const Spacer(),


          selected? Text('\$$price', style: getTextStyleWhite()):
          Text('\$$price', style: getTextStyleYellow()),

        ],
      ),
    ),
  );
}// END OF ANIMATED_CONTAINER