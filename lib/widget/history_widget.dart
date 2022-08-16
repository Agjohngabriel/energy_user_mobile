import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class HistoryWIdget extends StatelessWidget {
  const HistoryWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppTheme.primary,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 50,
            height: 50,
            color: AppTheme.black,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Purchased petrol, 50 liters",
                style: GoogleFonts.mulish(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Amount",
                  style: GoogleFonts.mulish(
                      fontSize: 11, fontWeight: FontWeight.w100)),
              SizedBox(
                height: 5,
              ),
              Text("-N8,250.00",
                  style: GoogleFonts.mulish(
                      fontWeight: FontWeight.bold, color: AppTheme.red))
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.pin_drop),
                SizedBox(
                  height: 10,
                ),
                Text("Sun, 23 Jan")
              ],
            ),
          ),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
