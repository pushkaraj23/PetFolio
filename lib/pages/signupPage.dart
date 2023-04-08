import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:petfolio/components/textfield.dart';

import '../components/button.dart';

class SignupPage extends StatefulWidget {
  final Function()? onTap;
  SignupPage({super.key, required this.onTap});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final firstNameController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();
  final emailController = TextEditingController();

  void userSignUp() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      if (passwordController.text == cpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text
        );
      } else {
        Navigator.pop(context);
        errorMessage('Passwords don\'t match!!');
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'email-already-in-use') {
        errorMessage('Email Already Registered!!');
      } else {
       errorMessage(e.code);
      }
    }
  }

  void errorMessage(String str) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text(str,
                  style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 115, 8, 0),
                      fontSize: 17,
                      letterSpacing: 0.7)),
            ),
            backgroundColor: Color.fromARGB(255, 193, 135, 135),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          );
        });
  }

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
                    textName: 'Name',
                    controller: firstNameController,
                    hintText: '',
                    obscureText: false),
                SizedBox(height: 10),
                MytextField(
                    textName: 'Email',
                    controller: emailController,
                    hintText: '',
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
                SizedBox(height: 10),
                SizedBox(height: 10),
                Button(
                  onTap: userSignUp,
                  text: 'Sign Up',
                  bgcolor: 0xFF2D9898,
                  txtcolor: 0xFFFFFFFF,
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
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
