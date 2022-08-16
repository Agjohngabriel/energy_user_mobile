import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Text(
            "About",
            style: GoogleFonts.mulish(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "This is Shell Filling Station. Branch located at No. 20 Ijaiye Road, Ikeja, Lagos. We sell the best refined products and cater for over 20, 000 customers each day. We work tirelessly and relentlessly to bring you the best products and services at your convenience. Choose Shell today.",
            style: GoogleFonts.mulish(),
          ),
        ],
      ),
    );
  }
}
