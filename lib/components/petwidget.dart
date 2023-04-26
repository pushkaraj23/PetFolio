import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetWidget extends StatefulWidget {
  const PetWidget({super.key});

  @override
  State<PetWidget> createState() => _PetWidgetState();
}

class _PetWidgetState extends State<PetWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 700,
      child: Column(
        children: [
          const SizedBox(height: 55),
          Container(
            height: 230,
            width: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(115),
                border: Border.all(
                    color: const Color.fromARGB(255, 222, 242, 242), width: 10),
                boxShadow: const [
                  (BoxShadow(
                    color: Color.fromARGB(41, 0, 0, 0),
                    blurRadius: 10.0,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                  ))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(115),
              child: Image.asset('assets/images/doggo.png'),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Bruno'.toUpperCase(),
            style: GoogleFonts.raleway(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 5),
          Text(
            'Indie, 2yrs Old',
            style: GoogleFonts.raleway(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 250,
            child: Text(
              'Hello world I’m Bruno and my hobby is sleeping. I don’t like taking medicines yet I have to in order to get better. I love going to Park.',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF257878),
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}
