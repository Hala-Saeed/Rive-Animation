import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../custom_shapes/top_row_custom_shape.dart';
import '../helper_widgets/container.dart';
import '../helper_widgets/container_two.dart';
import '../helper_widgets/get_row.dart';


class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  //FOR GESTURE DETECTOR
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            // BACKGROUND ANIMATION
            Container(
              height: double.infinity,
              width: 500,
              child: RiveAnimation.asset(
                  'assets/RiveAssets/background.riv'),
            ),

            //ADD BLUR
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 15,
                    sigmaY: 15
                ),
                child: const SizedBox(height: double.infinity,),
              ),
            ),

            //TOP ROW -> TEXT AND CUSTOM SHAPE
            Positioned(
              top: 80,
                left: 30,
                child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Upgrade \nto Premium',
                      style: TextStyle(
                          fontSize: 38,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),),

                    const SizedBox(width: 45,),

                     //STACK -> CUSTOM SHAPE AND STAR ICON
                     Stack(
                       children: [
                         CustomPaint(
                           size: Size(100,(110*1).toDouble()),
                           painter: CustomShape(),
                         ),

                         //STAR ICON
                         const Positioned(
                            left: 23,
                             top: 32,
                             child: Icon(Icons.star,size: 50,color: Colors.white,)),
                       ],
                     ),
                  ],
                )),


            //COLUMN -> FOUR ROWS
            Positioned(
              top: 190,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //CALLING GET_ROW FUNCTION
                  getRow('Unlimited storage for photos, videos', FontAwesomeIcons.solidCircleUser),
                  getRow('Unlimited export for your medias', FontAwesomeIcons.fileExport),
                  getRow('Remove all advertisements', FontAwesomeIcons.adversal),
                  getRow('Recover files you deleted in trash', FontAwesomeIcons.trash),
                ],
              ),
            ),

            //COLUMN -> THREE CONTAINERS
            Positioned(
              top: 430,
              left: 25,
              child: Column(
                children: [

                  //CONTAINER 1
                  GestureDetector(
                    onTap: (){
                      selected1 = !selected1;
                      selected2 = false;
                      selected3 = false;
                      setState(() {
                      });
                    },
                    // CALLING GET_ANIMATED_CONTAINER FUNCTION
                    child: getAnimatedContainer('Week', '3 days trial', '4.99', selected1),
                  ),

                  const SizedBox(height: 9,),

                  //CONTAINER 2
                  GestureDetector(
                    onTap: (){
                      selected2 = !selected2;
                      selected1 = false;
                      selected3 = false;
                      setState(() {
                      });
                    },
                    child: getAnimatedContainer('Week', '3 days trial', '4.99',selected2),
                  ),

                  const SizedBox(height: 9,),

                  //CONTAINER 3
                  GestureDetector(
                    onTap: (){
                      selected3 = !selected3;
                      selected2 = false;
                      selected1 = false;
                      setState(() {
                      });
                    },
                      child: getAnimatedContainerTwo('Lifetime', 'Billed once', '35.99',selected3),
                  ),

                  const SizedBox(height: 13,),

                  // SINGLE TEXT WIDGET
                  const Text('Restore Purchase', style: TextStyle(fontSize: 15, letterSpacing: 1,color: Colors.white)),

                  const SizedBox(height: 20,),

                //ROW -> THREE TEXT WIDGETS
                Row(
                  children: const [
                    Text('Terms Of Service' ,style: TextStyle(color: Colors.yellow,decoration: TextDecoration.underline)),
                    Text(' and ',style: TextStyle(color: Colors.white),),
                    Text('Privacy Policy' ,style: TextStyle(color: Colors.yellow,decoration: TextDecoration.underline)),
                  ],
                ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
