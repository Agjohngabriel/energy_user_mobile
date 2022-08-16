import 'package:energyone_user/app/modules/get_started/views/login_view.dart';
import 'package:energyone_user/app/routes/app_pages.dart';
import 'package:energyone_user/utils/colors.dart';
import 'package:energyone_user/utils/resConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResConfig().init(context);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(AppTheme.blue, BlendMode.overlay))),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(children: [
              SizedBox(
                height: ResConfig.safeBlockVertical * 55,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: ResConfig.safeBlockHorizontal * 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "to Energy One app.",
                style: GoogleFonts.mulish(
                    color: AppTheme.white,
                    fontSize: ResConfig.safeBlockHorizontal * 6,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: ResConfig.blockSizeVertical * 20,
              ),
              InkWell(
                onTap: () => Get.to(() => LoginView()),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ResConfig.blockSizeHorizontal * 10,
                      vertical: 10),
                  decoration: BoxDecoration(
                      color: AppTheme.blue,
                      borderRadius: BorderRadius.circular(22)),
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.mulish(
                        color: AppTheme.white,
                        fontSize: ResConfig.safeBlockHorizontal * 6,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: ResConfig.blockSizeVertical * 2,
              ),
              InkWell(
                onTap: () => Get.toNamed(Routes.GET_STARTED),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ResConfig.blockSizeHorizontal * 10,
                      vertical: 10),
                  decoration: BoxDecoration(
                      // color: AppTheme.blue,
                      borderRadius: BorderRadius.circular(22)),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.mulish(
                        color: AppTheme.white,
                        fontSize: ResConfig.safeBlockHorizontal * 4,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
