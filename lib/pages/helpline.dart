import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/components/help.dart';

class HelpingHands extends StatefulWidget {
  const HelpingHands({super.key});

  @override
  State<HelpingHands> createState() => _HelpingHandsState();
}

class _HelpingHandsState extends State<HelpingHands> {
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
            Color(0xFFDC6571),
          ],
        )),
        child: Column(children: [
          const SizedBox(height: 60),
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: SizedBox(
                    height: 40,
                    width: 90,
                    child: Image.asset('assets/images/back2.png')),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'HELPING  HANDS',
            style: GoogleFonts.poppins(
              color: const Color(0xFFDC6571),
              fontWeight: FontWeight.w800,
              fontSize: 30,
              letterSpacing: 2
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 700,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  HelpWidget(title: 'N S Veterinary Hospital', address: 'Shrinath Building Flat No 9, Katraj Jakat Naka, Katraj, Pune - 411046, Near Bhaironath Mandir (9am -10pm)', phone: '9850613044'),
                  HelpWidget(title: 'RESQ Centre', address: 'Plot No. 3906, Paud Mulshi Road, Near 115 Hilltown, Near Chandni Chowk, Pune – 411021', phone: '9890999111'),
                  HelpWidget(title: 'Karma Foundation', address: 'Opp. Sandalwood Society, Near Ambedkar Chowk, Near Medipoint Hospital, Aundh, Pune - 411007.', phone: '8390944337'),
                  HelpWidget(title: 'Fur N Feather', address: 'Devghandhar Apartment, Shivaji Park, Chinchwad, Pune - 411033, Behind Snake Park Chinchwad', phone: '9923550812'),
                  HelpWidget(title: 'Snake Friend', address: 'Yashoda Niwas, Gat No :- 1381, Shikrapur, Bajrangwadi Tal: Shirur Dist: Pune, Shikrapur, Pune - 412208, Mahanubhav Ashram,Opposite Dass Furniture Mall', phone: '8796800880'),
                  HelpWidget(title: 'Make New Life', address: 'Chhatrapati Sambhaji Nagar, Yashwantrao Chavan Nagar, Pune, Maharashtra 411043', phone: '06384471455'),
                  HelpWidget(title: 'Animal Rescure Trust', address: 'ART Shelter, Behind Raj Washing Centre Sonarwada Manjari khurd Manjri Theur, Road, Pune, Maharashtra 412307', phone: '06384495221'),
                  HelpWidget(title: 'Pet Home', address: 'Jai Hind Vihar Colony, Nadhenagar, Kalewadi , Pimpri, Pune, Maharashtra 411017', phone: '06384010510')
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
