import 'package:flutter/material.dart';
import 'package:petfolio/pages/home.dart';
import 'package:petfolio/pages/info.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(185, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        GestureDetector(
            child: SizedBox(
                height: 33, child: Image.asset('assets/images/home.png')),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            }),
        GestureDetector(
            child: SizedBox(
                height: 33, child: Image.asset('assets/images/search.png')),
            
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InfoPage()));
            }),
        SizedBox(height: 33, child: Image.asset('assets/images/location.png')),
        SizedBox(height: 33, child: Image.asset('assets/images/profile.png')),
      ]),
    );
  }
}
