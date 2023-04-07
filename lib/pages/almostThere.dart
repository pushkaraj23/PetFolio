import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button.dart';
import '../components/textField.dart';
import 'home.dart';
import 'loginPage.dart';

class AlmostThere extends StatefulWidget {
  AlmostThere({super.key});

  @override
  State<AlmostThere> createState() => _AlmostThereState();
}

class _AlmostThereState extends State<AlmostThere> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/signup-bg.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Image.asset(
                  'assets/images/pf.png',
                  width: 200,
                  height: 200,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [name('PET'), name1('FOLIO')]),
                SizedBox(height: 20),
                Text(
                  'You\'re Almost There',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                SizedBox(height: 60),
                MytextField(
                    textName: 'Username',
                    controller: usernameController,
                    hintText: 'eg. david_321',
                    obscureText: false),
                SizedBox(height: 10),
                MytextField(
                    textName: 'Password',
                    controller: passwordController,
                    hintText: '',
                    obscureText: true),
                SizedBox(height: 10),
                MytextField(
                    textName: 'Confirm Password',
                    controller: cpasswordController,
                    hintText: '',
                    obscureText: true),
                SizedBox(height: 20),
                SizedBox(
                  height: 15,
                ),
                SizedBox(width: 10),
                InkWell(
                  child: Button(
                    text: 'Sign Up',
                    bgcolor: 0xFF2D9898,
                    txtcolor: 0xFFFFFFFF,
                    ),
                  onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                  ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF2E6F78),
                      ),
                    ),
                    SizedBox(width: 10),
                    RichText(
                        text: TextSpan(
                            text: 'Sign In',
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: ((context, animation,
                                          secondaryAnimation) =>
                                      LoginPage()),
                                ));
                              })),
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  name(String x) {
    return Container(
      child: BorderedText(
        strokeWidth: 1.0,
        strokeColor: Color(0xFF4284A3),
        child: Text(
          x,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              decoration: TextDecoration.none,
              color: Colors.transparent,
              letterSpacing: 7.0),
        ),
      ),
    );
  }

  name1(String x) {
    return Text(
      x,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 25,
          decoration: TextDecoration.none,
          color: Color(0xFF4284A3),
          letterSpacing: 7.0),
    );
  }
}
