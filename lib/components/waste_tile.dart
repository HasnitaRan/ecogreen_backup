import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mwd_app/models/waste.dart';

class WasteTile extends StatelessWidget {
  final Waste waste;
  final void Function()? onTap;

  const WasteTile({
    super.key,
    required this.waste,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.only(left: 20),
          padding: const EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // image
                Image.asset(
                  waste.imagePath,
                  height: 80,
                ),

                // text
                Text(
                  waste.nama,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 15),
                ),

                // jenis
                // SizedBox(
                //   width: 80,
                //   child: Row(
                //     children: [
                //       // // sub
                //       // Text(
                //       //   waste.jenis,
                //       //   style: TextStyle(
                //       //     fontWeight: FontWeight.bold,
                //       //     color: Colors.grey[700],
                //       //   ),
                //       // ),
                //     ],
                //   ),
                // ),
              ]),
        ),
      ),
    );
  }
}
