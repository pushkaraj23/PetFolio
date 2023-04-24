import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpWidget extends StatelessWidget {
  final String title;
  final String address;
  final String phone;
  const HelpWidget(
      {super.key,
      required this.title,
      required this.address,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 350,
        height: 120,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(20, 255, 255, 255),
              Colors.white,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: const Color(0xFFDC6571),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 62,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      address,
                      style: GoogleFonts.openSans(),
                    ),
                  ),
                ),
                SizedBox(
                    height: 35,
                    child: GestureDetector(
                        onTap: () async {
                          final Uri url =
                              Uri(scheme: 'tel', path: phone);
                              await launchUrl(url);
                        },
                        child: Image.asset('assets/images/call.png')))
              ],
            )
          ],
        ),
      ),
    );
  }
}
