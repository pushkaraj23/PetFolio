import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:petfolio/components/textfield.dart';
import 'package:petfolio/pages/almostThere.dart';
import 'package:petfolio/pages/loginPage.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

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
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/pf.png',
                  width: 220,
                  height: 220,
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [name('PET'), name1('FOLIO')]),
                    
                SizedBox(height: 20),

                Text(
                  'Let\'s get you started',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),

                SizedBox(height: 30),
                MytextField(
                    textName: 'First Name',
                    controller: firstNameController,
                    hintText: 'eg. Warren',
                    obscureText: false),

                SizedBox(height: 10),
                MytextField(
                    textName: 'Last Name',
                    controller: lastNameController,
                    hintText: 'eg. David',
                    obscureText: false),

                SizedBox(height: 10),
                MytextField(
                    textName: 'Email Id',
                    controller: emailController,
                    hintText: 'eg. user14@gmail.com',
                    obscureText: false),

                SizedBox(height: 10),
                MytextField(
                    textName: 'Phone No.',
                    controller: phoneController,
                    hintText: 'eg. +91 .....',
                    obscureText: false),

                SizedBox(height: 10),
                
                SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                      // transitionsBuilder: ((context, animation, secondaryAnimation, child) {

                                      // })
                                    ));
                                  })),
                      ],
                    ),
                    SizedBox(width: 20),
                    InkWell(
                        child: SizedBox(
                          height: 100,
                          child: Image.asset('assets/images/next.png')
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AlmostThere()));
                        },
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
