import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bordered_text/bordered_text.dart';

class MytextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String textName;

  const MytextField(
      {super.key,
      required this.textName,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  ' ' + textName,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(
                    color: Color.fromARGB(45, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(0, 4)
                  )]
                ),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(175, 232, 255, 253),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color: Colors.transparent
                          )
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: Color(0xFF2D9898),
                          width: 3
                        )
                      ),
                      hintText: hintText,
                      hintStyle: GoogleFonts.openSans(
                          fontSize: 15, color: Colors.grey.shade800)),
                ),
              ),
            ],
          )
        ),
    );
  }
}