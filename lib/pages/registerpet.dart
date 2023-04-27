import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petfolio/components/button.dart';
import 'package:petfolio/components/textField.dart';

class RegisterPet extends StatefulWidget {
  const RegisterPet({super.key});

  @override
  State<RegisterPet> createState() => _RegisterPetState();
}

class _RegisterPetState extends State<RegisterPet> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final breedController = TextEditingController();
  final bioController = TextEditingController();

  registerPet() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/registerBackground.png'),
                fit: BoxFit.cover)),
        child: Column(children: [
          const SizedBox(height: 120),
          Text('Register Your Pet',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFDC6571))),
          const SizedBox(height: 70),
          MytextField(textName: 'Pet Name', controller: nameController, hintText: '', obscureText: false, borderColor: 0xFFDC6571,),
          const SizedBox(height: 20),
          MytextField(textName: 'Age', controller: ageController, hintText: '', obscureText: false, borderColor: 0xFFDC6571,),
          const SizedBox(height: 20),
          MytextField(textName: 'Type', controller: breedController, hintText: '', obscureText: false, borderColor: 0xFFDC6571,),
          const SizedBox(height: 20),
          MytextField(textName: 'Bio', controller: bioController, hintText: '', obscureText: false, borderColor: 0xFFDC6571,),
          const SizedBox(height: 80),
          Button(text: 'Register Pet', bgcolor: 0xFFDC6571, txtcolor: 0xFFFFFFFF, onTap: registerPet)
        ]),
      ),
    );
  }
}