import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app/data/station.dart';
import '../utils/colors.dart';
import '../utils/resConfig.dart';
import 'distance_widget.dart';

class StationDetailsWidget extends StatelessWidget {
  final Station list;
  const StationDetailsWidget({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResConfig().init(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Column(
            children: [
              Container(
                height: ResConfig.safeBlockVertical * 21,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                        image: AssetImage("${list.imageUrl}"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list.name,
                      style: GoogleFonts.mulish(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        DistanceWidget(),
                        Spacer(),
                        Row(
                          children: [
                            Icon(Icons.star_border_outlined),
                            SizedBox(
                              width: 7,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rating",
                                  style: GoogleFonts.mulish(
                                      color: AppTheme.dark_grey,
                                      fontSize:
                                          ResConfig.blockSizeHorizontal * 2.7),
                                ),
                                Text(
                                  "${list.totalRating}",
                                  style: GoogleFonts.mulish(
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.favorite_outline_rounded,
              color: AppTheme.white,
            ))
      ],
    );
  }
}
