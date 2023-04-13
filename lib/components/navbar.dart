import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(185, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        SizedBox(height: 33, child: Image.asset('assets/images/home.png')),
        SizedBox(height: 33, child: Image.asset('assets/images/search.png')),
        SizedBox(height: 33, child: Image.asset('assets/images/location.png')),
        SizedBox(height: 33, child: Image.asset('assets/images/profile.png')),
      ]),
    );
  }
}