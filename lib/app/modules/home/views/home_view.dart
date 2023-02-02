import 'package:card_swiper/card_swiper.dart';
import 'package:energyone_user/utils/resConfig.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';
import '../../../../widget/page_section.dart';
import '../../../../widget/station_details_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    ResConfig().init(context);
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: ResConfig.safeBlockVertical * 2,
        ),
        Center(
          child: SizedBox(
            width: ResConfig.safeBlockHorizontal * 90,
            child: Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ThemeData().colorScheme.copyWith(
                      primary: AppTheme.blue,
                    ),
              ),
              child: TextFormField(
                obscureText: true,
                enableSuggestions: false,
                keyboardType: TextInputType.visiblePassword,
                cursorColor: AppTheme.blue,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppTheme.white.withOpacity(0.4)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.blue),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  filled: true,
                  fillColor: AppTheme.white,
                  prefixIcon: Icon(Icons.search_outlined),
                  suffixIcon: Icon(Icons.filter_list_outlined),
                  iconColor: AppTheme.grey,
                  prefixIconColor: AppTheme.grey,
                  hintText: 'Find Station',
                  hintStyle: GoogleFonts.mulish(
                    color: AppTheme.blue.withOpacity(0.8),
                    fontSize: ResConfig.safeBlockHorizontal * 4,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/map.png"),
          opacity: 0.6
          )
        ),
          child: Stack(
            children: [
              SizedBox(
                height: ResConfig.safeBlockVertical * 56,
              ),
              Positioned(
                top: 150,
                child: SizedBox(
                  width: ResConfig.safeBlockHorizontal * 100,
                  height: ResConfig.safeBlockVertical * 34,
                  child: Swiper(
                      itemCount: controller.stations.length,
                      scale: 0.8,
                      viewportFraction: 0.6,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => Get.toNamed(Routes.STATIONDETAILS),
                          child: StationDetailsWidget(
                            list: controller.stations[index],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: ResConfig.safeBlockVertical * 2,
        ),
        PageSection(
          title: "Best Offer",
        ),
        SizedBox(
          height: ResConfig.safeBlockVertical * 2,
        ),
        PageSection(
          title: "Favourites",
        ),
      ],
    ));
  }
}
