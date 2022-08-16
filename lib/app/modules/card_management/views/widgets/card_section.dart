import 'package:energyone_user/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppTheme.cardColor1,
                  AppTheme.cardColor2,
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(17))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("AMOUNT AVAILABLE",
                      style: GoogleFonts.mulish(
                          fontSize: 11,
                          fontWeight: FontWeight.w100,
                          color: AppTheme.white)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "28,856.93",
                    style: GoogleFonts.mulish(
                        color: AppTheme.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("OWNER",
                      style: GoogleFonts.mulish(
                          fontSize: 11,
                          fontWeight: FontWeight.w100,
                          color: AppTheme.white)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Sylvia Jones",
                    style: GoogleFonts.mulish(
                        color: AppTheme.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("CARD ID",
                      style: GoogleFonts.mulish(
                          fontSize: 11,
                          fontWeight: FontWeight.w100,
                          color: AppTheme.white)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "23Dxj283wDA820Agj289",
                    style: GoogleFonts.mulish(
                        color: AppTheme.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Text(
                        "ACTIVE",
                        style: GoogleFonts.mulish(
                            color: AppTheme.black, fontSize: 10),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.refresh,
                        color: AppTheme.white,
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: AppTheme.black,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 150,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: AppTheme.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Add Credit",
                  style: GoogleFonts.mulish(
                      color: AppTheme.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
