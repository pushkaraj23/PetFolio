import 'package:bordered_text/bordered_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/components/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void logOut() {
    FirebaseAuth.instance.signOut();
  }
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
            name('PET'),
            name1('FOLIO'),
            SizedBox(height: 30, child: Image.asset('assets/images/paw.png')),
            SizedBox(width: 35),
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
                    child: GestureDetector(
                      child: Image.asset('assets/images/heart.png'),
                      onTap: logOut,
                      )
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
              height: 665,
              width: 360,
              decoration: BoxDecoration(
                color: Color.fromARGB(96, 255, 255, 255),
                borderRadius: BorderRadius.circular(20)
              ),
            )
        ),

        SizedBox(height: 15),
        NavBar(),
        
      ]),
    );
  }

  name(String x) {
    return Container(
      child: BorderedText(
        strokeWidth: 1.0,
        strokeColor: Color(0xFFDC6571),
        child: Text(
          x,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              decoration: TextDecoration.none,
              color: Colors.transparent,
              letterSpacing: 4.0),
        ),
      ),
    );
  }

  name1(String x) {
    return Text(
      x,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          decoration: TextDecoration.none,
          color: Color(0xFFDC6571),
          letterSpacing: 4.0),
    );
  }
}
