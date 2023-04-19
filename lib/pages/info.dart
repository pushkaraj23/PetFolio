import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/components/navbar.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          Color(0xFFF5B76A),
        ],
      )),
      child: Column(children: [
        const SizedBox(height: 65),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 230,
              child: Text(
                'Find here what your pet needs the most !!',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 19,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(width: 25),
            SizedBox(height: 80, child: Image.asset('assets/images/search.png'))
          ],
        ),


        const SizedBox(height: 30),
        Container(
          height: 133,
          width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                    color: Color.fromARGB(150, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )],
              image: DecorationImage(
                image: AssetImage("assets/images/diet.png"),
              )),
            child: Center(child: Text(
              'DIET',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 5,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none
              )
            )),
          ),

          const SizedBox(height: 22),
          Container(
          height: 133,
          width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                    color: Color.fromARGB(150, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )],
              image: DecorationImage(
                image: AssetImage("assets/images/facts.png"),
              )),
            child: Center(child: Text(
              'FACTS',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 5,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none
              )
            )),
          ),

          const SizedBox(height: 22),
          Container(
          height: 133,
          width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                    color: Color.fromARGB(150, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )],
              image: DecorationImage(
                image: AssetImage("assets/images/health.png"),
              )),
            child: Center(child: Text(
              'HEALTH',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 5,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none
              )
            )),
          ),

          const SizedBox(height: 22),
          Container(
          height: 133,
          width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                    color: Color.fromARGB(150, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )],
              image: DecorationImage(
                image: AssetImage("assets/images/workout.png"),
              )),
            child: Center(child: Text(
              'WORKOUT',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 5,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none
              )
            )),
          ),
          const SizedBox(height: 30),
        const NavBar()
      ]),
    );
  }
}
