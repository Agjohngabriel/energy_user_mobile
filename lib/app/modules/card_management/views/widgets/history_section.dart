import 'package:energyone_user/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../widget/history_widget.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("History"),
            Row(
              children: [
                Icon(
                  Icons.delete,
                  color: AppTheme.red,
                ),
                Text(
                  "Clear",
                  style: GoogleFonts.mulish(color: AppTheme.red),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        HistoryWIdget(),
        SizedBox(
          height: 5,
        ),
        HistoryWIdget(),
      ],
    );
  }
}
