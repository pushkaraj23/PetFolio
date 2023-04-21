import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  final searchKey = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dietpage.png"),
                fit: BoxFit.cover)),
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
                hintText: 'eg. Golden Retriever',
                suffixIcon: SizedBox(
                  height: 30,
                  width: 70,
                  child: Image.asset('assets/images/search.png'),
                ),
                hintStyle: GoogleFonts.openSans(
                    fontSize: 15, color: Colors.grey.shade800),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Golden Retriever',
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700),
          ),

          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 500,
            decoration: BoxDecoration(
                color: const Color.fromARGB(113, 255, 255, 255),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  "Here's a sample diet plan for a Golden Retriever that can be adapted based on your dog's individual needs and activity level: \n\nBreakfast (7:00am): \n - 2 cups of high-quality dry dog food or wet dog food, with added water to help with hydration \n - 1/2 cup of cooked sweet potato or pumpkin as a source of fiber and carbohydrates \n - 1/2 cup of green beans or carrots as a source of vitamins and minerals \n\nMid-morning snack (10:00am): \nA small low-fat dog treat, such as a small piece of apple or carrot \n\nLunch (12:30pm): 2 cups of high-quality dry dog food or wet dog food, with added water to help with hydration \n - 1/2 cup of cooked brown rice or quinoa as a source of carbohydrates and fiber \n - 1/2 cup of cooked lean chicken or turkey as a source of protein \n\nAfternoon snack (3:00pm): A small low-fat dog treat, such as a small piece of plain cooked chicken \n\nDinner (6:00pm): 2 cups of high-quality dry dog food or wet dog food, with added water to help with hydration \n - 1/2 cup of cooked green beans or broccoli as a source of vitamins and minerals \n - 1/2 cup of cooked lean beef or fish as a source of protein \n\nEvening snack (8:00pm): A small low-fat dog treat, such as a small piece of banana or blueberries \n\nIt is important to remember to feed your Golden Retriever on a schedule, rather than leaving food out all day. This helps with portion control and prevents overeating. It is also important to consult with your veterinarian to ensure that your dog's diet is tailored to their individual needs and any health conditions they may have.",
                  style: GoogleFonts.openSans(),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
