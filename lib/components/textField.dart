import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MytextField extends StatelessWidget {
  final int borderColor;
  final controller;
  final String hintText;
  final bool obscureText;
  final String textName;

  const MytextField(
      {super.key,
      required this.borderColor,
      required this.textName,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  ' $textName',
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
                  boxShadow: const [BoxShadow(
                    color: Color.fromARGB(45, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(0, 4)
                  )]
                ),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(196, 255, 255, 255),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                            color: Colors.transparent
                          )
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: Color(borderColor),
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