import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:petfolio/components/button.dart';
import 'package:petfolio/components/textfield.dart';
import 'package:petfolio/pages/home.dart';
import 'signupPage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/signin-bg.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                  child: Image.asset(
                    'assets/images/pf.png',
                    width: 300,
                    height: 300,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [name('PET'), name1('FOLIO')]),
                    
                SizedBox(height: 10),
                Text(
                  'Welcomes You',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 20),
                ),
                SizedBox(height: 20),
                MytextField(
                    textName: 'Username',
                    controller: usernameController,
                    hintText: 'eg. abc123',
                    obscureText: false),
                SizedBox(height: 10),
                MytextField(
                    textName: 'Password',
                    controller: passwordController,
                    hintText: 'eg. c@nx321\$',
                    obscureText: true),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(180, 0, 0, 0),
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF2E6F78),
                        decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: 20),

                InkWell(
                  child: Button(
                    text: 'Sign In',
                    bgcolor: 0xFF2D9898,
                    txtcolor: 0xFFFFFFFF,
                    ),
                  onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                  ),

                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF2E6F78),
                      ),
                    ),
                    SizedBox(width: 5),
                    RichText(
                        text: TextSpan(
                            text: 'Sign Up',
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupPage()),
                                );
                              }
                        )
                    ),
                  ],
                )
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
              fontSize: 35,
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
          fontSize: 35,
          decoration: TextDecoration.none,
          color: Color(0xFF4284A3),
          letterSpacing: 7.0),
    );
  }
}
