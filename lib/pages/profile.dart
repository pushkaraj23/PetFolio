import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/components/navbar.dart';
import 'package:petfolio/components/petwidget.dart';
import 'package:petfolio/components/sidebar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.black),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // shadowColor: Colors.transparent,
        title: Text(
          'Welcome'.toUpperCase(),
          style: GoogleFonts.raleway(
              color: Colors.black,
              decoration: TextDecoration.none,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
      ),
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
          const SizedBox(height: 45),
          SizedBox(
            width: 200,
            child: Text(
              'Pushkaraj Suryawanshi',
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'My Pets',
            style: GoogleFonts.openSans(
                letterSpacing: 5,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 505,
            child: PageView.builder(
                itemCount: 2,
                onPageChanged: (value) {
                  if (check == true) {
                    check = false;
                  } else {
                    check = true;
                  }
                },
                itemBuilder: (context, index) {
                  return check? const PetWidget(img: 'assets/images/kitty.png', name: 'Flurry', type: 'Arabian', age: 1, bio: 'Hello my name is Kitty and I\'m the evil little pet here. I love to trouble Bruno all the time. I don\'t like exercising at all. Instead I\'ll lay down and watch television.') : const PetWidget(img: 'assets/images/doggo.png', name: 'Bruno', type: 'India', age: 2, bio: "Hello World I'm Bruno and my Hobby is sleeping. I don't like taking medicines yet I have to in order to get better. I love going to Park.");
                }),
          ),
          const NavBar()
        ]),
      ),
    );
  }
}
