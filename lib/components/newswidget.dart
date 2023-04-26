import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsContent;

  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsDes,
      required this.newsHead,
      required this.newsUrl,
      required this.newsContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 665,
        width: 360,
        decoration: BoxDecoration(
            color: const Color.fromARGB(96, 255, 255, 255),
            borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
                height: 330, width: 330, fit: BoxFit.cover, imgUrl),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 70,
            width: 330,
            child: Text(
              newsHead,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            width: 330,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                newsDes,
                style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  _launchURL(newsUrl);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2D9898)),
                child: const Text('Read More'),
              ),
              const SizedBox(width: 20)
            ],
          )
        ]),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: 'https', host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication
    )) {
      throw 'Cannot launch URL';
    }
  }
}
