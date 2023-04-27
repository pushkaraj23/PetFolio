import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/components/navbar.dart';
import 'package:petfolio/components/newswidget.dart';
import 'package:petfolio/controller/fetchnews.dart';
import 'package:petfolio/pages/helpline.dart';

import '../model/newsart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NewsArt newsArt;
  bool isLoading = true;

  getNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          Color(0xFFF5B76A),
        ],
      )),
      child: Column(children: [
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            name('PET'),
            name1('FOLIO'),
            SizedBox(height: 30, child: Image.asset('assets/images/paw.png')),
            const SizedBox(width: 35),
            Container(
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(127, 45, 152, 152),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 35,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HelpingHands()));
                        },
                        child: Image.asset('assets/images/heart.png'),
                      )),
                  SizedBox(
                      height: 35,
                      child: Image.asset('assets/images/camera.png')),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
            height: 665,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  isLoading = true;
                });
                getNews();
              },
              itemBuilder: (context, index) {
                return isLoading
                    ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                          height: 665,
                          width: 360,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(96, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(child: CircularProgressIndicator())),
                    )
                    : Center(
                        child: NewsContainer(
                          imgUrl: newsArt.imgUrl,
                          newsDes: newsArt.newsDes,
                          newsHead: newsArt.newsHead,
                          newsUrl: newsArt.newsUrl,
                          newsContent: newsArt.newsContent,
                        ),
                      );
              },
            )),
        const SizedBox(height: 15),
        const NavBar(),
      ]),
    );
  }

  name(String x) {
    return BorderedText(
      strokeWidth: 1.0,
      strokeColor: const Color(0xFFDC6571),
      child: Text(
        x,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            decoration: TextDecoration.none,
            color: Colors.transparent,
            letterSpacing: 4.0),
      ),
    );
  }

  name1(String x) {
    return Text(
      x,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          decoration: TextDecoration.none,
          color: const Color(0xFFDC6571),
          letterSpacing: 4.0),
    );
  }
}
