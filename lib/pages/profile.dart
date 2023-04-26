import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/components/navbar.dart';
import 'package:petfolio/components/petwidget.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color(0xFF63C0BB),
          ],
        )),
        child: Column(children: [
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome,',
                style: GoogleFonts.raleway(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 200),
              GestureDetector(
                child: SizedBox(
                    height: 40,
                    child: Image.asset('assets/images/settings.png')),
              )
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              '     Pushkaraj Suryawanshi',
              style: GoogleFonts.raleway(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 60),
          Text(
            'My Pets',
            style: GoogleFonts.openSans(
                letterSpacing: 5,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 570,
            child: PageView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const PetWidget();
                }),
          ),
          const NavBar()
        ]),
      ),
    );
  }
}
