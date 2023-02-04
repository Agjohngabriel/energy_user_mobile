import 'package:energyone_user/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCardWidget extends StatelessWidget {
  const CartCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
    decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Petrol Purchase",
              style: GoogleFonts.mulish(
                color: AppTheme.blue,
                  fontSize: 19, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 5,
            ),
            Text("15.00 Liters",
                style: GoogleFonts.mulish(
                    fontSize: 11, fontWeight: FontWeight.w800)),
            SizedBox(
              height: 5,
            ),
           Text("Station: NNPC Filling Station, Pginnusi rd",
            style: GoogleFonts.mulish(
                    fontSize: 8, fontWeight: FontWeight.normal)
           ),
             Text("Delivered to:  Home Address",
            style: GoogleFonts.mulish(
                    fontSize: 8, fontWeight: FontWeight.normal)
           ),
          
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                Text(
              "N8,250.00",
              style: GoogleFonts.mulish(
                color: AppTheme.blue,
                  fontSize: 19, fontWeight: FontWeight.w800),
            ),
              SizedBox(
                height: 10,
              ),
             Container(
              padding: EdgeInsets.all(8),
              child: Text("COUPON APPLIED", style:  GoogleFonts.mulish(
                    fontSize: 8, fontWeight: FontWeight.bold, color: AppTheme.white)),
             decoration: BoxDecoration(
              color:Colors.green,
              borderRadius: BorderRadius.circular(20)
             ),
             )
            ],
          ),
        ),
      
      ],
    ),
    );
  }
}
