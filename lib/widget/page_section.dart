import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/resConfig.dart';
import 'distance_widget.dart';

class PageSection extends StatelessWidget {
  final String title;
  const PageSection({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.mulish(
                    color: AppTheme.dark_grey,
                    fontWeight: FontWeight.bold,
                    fontSize: ResConfig.blockSizeHorizontal * 4),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: GoogleFonts.mulish(
                      color: AppTheme.black,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: ResConfig.safeBlockHorizontal * 100,
            height: ResConfig.safeBlockVertical * 12.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  padding: EdgeInsets.only(right: 20, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Container(
                        height: ResConfig.safeBlockVertical * 10,
                        width: ResConfig.safeBlockHorizontal * 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/station.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ENI Station",
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w500,
                                color: AppTheme.dark_grey,
                                fontSize: 13),
                          ),
                          Text(
                            "N85.00",
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                color: AppTheme.black,
                                fontSize: 15),
                          ),
                          Text(
                            "Kerosene",
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w300,
                                color: AppTheme.dark_grey,
                                fontSize: 11),
                          ),
                          DistanceWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  padding: EdgeInsets.only(right: 20, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Container(
                        height: ResConfig.safeBlockVertical * 10,
                        width: ResConfig.safeBlockHorizontal * 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/station2.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tonimas",
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w500,
                                color: AppTheme.dark_grey,
                                fontSize: 13),
                          ),
                          Text(
                            "N85.00",
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                color: AppTheme.black,
                                fontSize: 15),
                          ),
                          Text(
                            "Kerosene",
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w300,
                                color: AppTheme.dark_grey,
                                fontSize: 11),
                          ),
                          DistanceWidget(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
