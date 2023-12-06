import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/start_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 236, 235),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 15),
            // app name
            Text(
              "MWD",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            SizedBox(width: 20),

            // icon
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset('lib/images/logorm.png', width: 350),
            ),

            const SizedBox(height: 10),

            //title
            Text(
              "APLIKASI DETEKSI SAMPAH DAN INFORMASI BANK SAMPAH",
              style: GoogleFonts.zenMaruGothic(
                fontSize: 20,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 0),

            //subtitle
            Text(
              "Selamat datang di aplikasi pintar kami yang membuka wawasan keberlanjutan",
              style: GoogleFonts.zenMaruGothic(
                fontSize: 15,
                color: Colors.grey,
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            //get started button
            StartButton(
              text: "Get Started",
              onTap: () {
                // go to login page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
