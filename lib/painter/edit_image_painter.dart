import 'package:flutter/material.dart';

class EditImageCanvasPainter extends CustomPainter {
  
  List<String> _texts;

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = new Paint();
    
    TextSpan span = new TextSpan(style: TextStyle(color: Colors.black), text: 'TripleLS');
    TextPainter textPainter = new TextPainter(text: span, textAlign: TextAlign.left, textDirection: TextDirection.ltr);
    textPainter.layout();
    textPainter.paint(canvas, Offset.zero);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}