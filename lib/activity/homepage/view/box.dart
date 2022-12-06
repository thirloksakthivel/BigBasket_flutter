import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class box extends StatelessWidget {
   box({required this.width ,this.height}) ;
   double? height;
   double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width==null?150:width,
      height: height==null?150:height,
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: Colors.red),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
