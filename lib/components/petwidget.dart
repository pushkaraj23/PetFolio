import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetWidget extends StatelessWidget {
  final String name;
  final String img;
  final String type;
  final int age;
  final String bio;
  const PetWidget({
    super.key,
    required this.img,
    required this.name,
    required this.type,
    required this.age,
    required this.bio
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 700,
      child: Column(
        children: [
          const SizedBox(height: 30),
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
              child: Image.asset(img),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            name.toUpperCase(),
            style: GoogleFonts.raleway(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 5),
          Text(
            '$type, $age years old',
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
              bio,
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
