import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/helper/chatgpt.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  final searchKey = TextEditingController();
  String response = '';
  String input = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dietpage.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 60),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: SizedBox(
                      height: 40,
                      width: 90,
                      child: Image.asset('assets/images/back.png')),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(150, 0, 0, 0),
                        blurRadius: 10,
                        offset: Offset(4, 4))
                  ],
                ),
                child: Image.asset('assets/images/diet2.png')),
            const SizedBox(height: 30),
            Container(
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(45, 0, 0, 0),
                        blurRadius: 5,
                        offset: Offset(4, 4))
                  ]),
              child: TextField(
                controller: searchKey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          const BorderSide(color: Color(0xFF2D9898), width: 3)),
                  hintText: 'Search Your Pet Type',
                  suffixIcon: SizedBox(
                    height: 30,
                    width: 70,
                    child: IconButton(
                        icon: Image.asset('assets/images/search.png'),
                        onPressed: () {
                          setState(() {
                            input = searchKey.text;
                            loading = true;
                          searchKey.clear();
                          });
                          // searchKey.clear();
                          generateResponse(
                                  "Give a detailed daily diet plan for a $input. Also give dos and donts about diet")
                              .then((value) {
                            setState(() {
                              loading = false;
                              response = value;
                            });
                          });
                        }),
                  ),
                  hintStyle: GoogleFonts.openSans(
                      fontSize: 15, color: Colors.grey.shade800),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(input.toUpperCase(),
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w600, letterSpacing: 2)),
            const SizedBox(height: 15),
            Container(
              width: 350,
              height: 515,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(113, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: loading
                      ? SizedBox(
                        width: 350,
                        height: 450,
                        child: Center(
                            child: CircularProgressIndicator(
                              color: Colors.grey.shade800,
                            ),
                          ),
                      )
                      : Text(
                          response,
                          style: GoogleFonts.openSans(),
                        ),
                ),
              ),
            ),
            const SizedBox(height: 24)
          ]),
        ),
      ),
    );
  }
}
