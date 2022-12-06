import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class txt extends StatelessWidget {
   txt({required this.content, this.size , this.color}) ;

   final String content;
   double? size;
   int? color;
  @override
  Widget build(BuildContext context) {
    return Text(content!,style: GoogleFonts.courgette(fontSize: size==null?14:size,color: color==null?Colors.black:Color(color!)),
    );
  }
}
