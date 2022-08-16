import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/resConfig.dart';

class DistanceWidget extends StatelessWidget {
  const DistanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.directions),
        SizedBox(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Distance",
              style: GoogleFonts.mulish(
                  color: AppTheme.dark_grey,
                  fontSize: ResConfig.blockSizeHorizontal * 2.7),
            ),
            Text(
              "29m",
              style: GoogleFonts.mulish(fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}
