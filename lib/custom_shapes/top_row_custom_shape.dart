import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomShape extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 231, 97, 11)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(Offset(size.width*0.01,size.height*0.55),Offset(size.width*0.99,size.height*0.55),[const Color(
        0xffeee327),const Color(0xfff18007),const Color(0xfff18007),const Color(0xffea730c),const Color(
        0xffeb7208),const Color(0xfff08324),const Color(0xfff7841f)],[0.00,0.49,0.64,0.82,0.91,0.95,1.00]);

    Path path0 = Path();
    path0.moveTo(size.width*0.0050000,size.height*0.2450000);
    path0.lineTo(size.width*0.9950000,size.height*0.2450000);
    path0.lineTo(size.width*0.9900000,size.height*0.7450000);
    path0.lineTo(size.width*0.7100000,size.height*0.8500000);
    path0.lineTo(size.width*0.3050000,size.height*0.8500000);
    path0.lineTo(size.width*0.0050000,size.height*0.7500000);
    path0.lineTo(size.width*0.0050000,size.height*0.2450000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

