import 'package:energyone_user/app/modules/station_details/views/widgets/station_details_widget.dart';
import 'package:energyone_user/utils/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/resConfig.dart';

class StationDetails extends StatefulWidget {
  const StationDetails({Key? key}) : super(key: key);

  @override
  State<StationDetails> createState() => _StationDetailsState();
}

class _StationDetailsState extends State<StationDetails> {
  @override
  Widget build(BuildContext context) {
    ResConfig().init(context);
    return Scaffold(
      backgroundColor: AppTheme.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppTheme.white.withOpacity(0.9),
        title: Text("Mobil Filling Station",
            style: TextStyle(
                fontSize: ResConfig.safeBlockHorizontal * 6,
                color: AppTheme.dark_grey,
                fontWeight: FontWeight.w700)),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_outlined,
            color: AppTheme.dark_grey,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: ResConfig.safeBlockVertical * 35,
            width: ResConfig.safeBlockHorizontal * 100,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/station.jpg',
              ),
              fit: BoxFit.cover,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(width: 80, child: Image.asset("assets/logo.png")),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shell Filling Station",
                      style: GoogleFonts.mulish(
                          fontSize: ResConfig.safeBlockHorizontal * 6,
                          color: AppTheme.blue,
                          fontWeight: FontWeight.w700)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_city),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "NO. 20 Ijaiye Road, Ikeja, Lagos",
                        style: GoogleFonts.mulish(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.directions,
                      color: AppTheme.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DISTANCE",
                          style: GoogleFonts.mulish(
                              color: AppTheme.dark_grey,
                              fontSize: ResConfig.blockSizeHorizontal * 2.7),
                        ),
                        Text(
                          "29m",
                          style:
                              GoogleFonts.mulish(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppTheme.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RATING",
                          style: GoogleFonts.mulish(
                              color: AppTheme.dark_grey,
                              fontSize: ResConfig.blockSizeHorizontal * 2.7),
                        ),
                        Text(
                          "4.8",
                          style:
                              GoogleFonts.mulish(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.lock_clock,
                      color: AppTheme.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OPEN HOURS",
                          style: GoogleFonts.mulish(
                              color: AppTheme.dark_grey,
                              fontSize: ResConfig.blockSizeHorizontal * 2.7),
                        ),
                        Text(
                          "8:00 - 20:00",
                          style:
                              GoogleFonts.mulish(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: AppTheme.white,
                    labelColor: AppTheme.blue,
                    unselectedLabelColor: AppTheme.black,
                    tabs: [
                      Tab(
                        text: "Buy",
                      ),
                      Tab(
                        text: "Details",
                      ),
                      Tab(
                        text: "Contact",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: ResConfig.safeBlockHorizontal * 100,
                    height: ResConfig.safeBlockVertical * 30,
                    child: TabBarView(children: [
                      Center(child: Text("Buy")),
                      DetailsWidget(),
                      Center(child: Text("Contact")),
                    ]),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
