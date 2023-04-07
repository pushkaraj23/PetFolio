import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          Color(0xFFF5B76A),
        ],
      )),
      child: Column(children: [
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 15),
            Text(
              'PetFolio',
              style: GoogleFonts.poppins(
                  color: Color(0xFFDC6571),
                  fontSize: 35,
                  decoration: TextDecoration.none,
                  letterSpacing: 1),
            ),
            SizedBox(width: 80),
            Container(
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                  color: Color.fromARGB(127, 45, 152, 152),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 35,
                    child: Image.asset('assets/images/heart.png')
                    ),
                  SizedBox(
                    height: 35,
                    child: Image.asset('assets/images/calender.png')
                    ),
                ],
              ),
            )
          ],
        ),

        SizedBox(height: 20),
        SingleChildScrollView(
          child: Container(
              height: 650,
              width: 360,
              decoration: BoxDecoration(
                color: Color.fromARGB(96, 255, 255, 255),
                borderRadius: BorderRadius.circular(20)
              ),
            )
        ),

        
      ]),
    );
  }
}
