import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final bgcolor;
  final txtcolor;
  const Button({super.key,
  required this.text,
  required this.bgcolor,
  required this.txtcolor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 65,
      decoration: BoxDecoration(
          color: Color(bgcolor),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(136, 0, 0, 0),
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: Color(txtcolor), fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
