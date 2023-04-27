import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/pages/authPage.dart';
import 'package:petfolio/pages/registerpet.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: const Color.fromARGB(255, 196, 224, 222),
      child: Column(
        children: [
          const SizedBox(height: 60),
          GestureDetector(
            child: Container(
                height: 60,
                width: 270,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(158, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  'Register Pet',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ))),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RegisterPet()));
            },
          ),
          const SizedBox(height: 20),
          GestureDetector(
            child: Container(
                height: 60,
                width: 270,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(158, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  'Sign Out',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ))),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AuthPage()));
            },
          ),
        ],
      ),
    ));
  }
}
