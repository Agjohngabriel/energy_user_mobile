import 'package:energyone_user/app/modules/otp/components/field.dart';
import 'package:energyone_user/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/resConfig.dart';
import '../../../../widget/phone.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    ResConfig().init(context);
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.primary,
        appBar: AppBar(
           backgroundColor: AppTheme.primary,
           elevation: 0,
           foregroundColor:AppTheme.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(height: ResConfig.blockSizeVertical * 20),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ResConfig.safeBlockHorizontal * 10),
                child: Column(
                  children: [
                    SizedBox(height: ResConfig.blockSizeVertical * 3),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm your number",
                        style: GoogleFonts.mulish(
                            fontSize: ResConfig.safeBlockHorizontal * 6,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blue,
                            letterSpacing: 0.4),
                      ),
                    ),
                    SizedBox(height: ResConfig.blockSizeVertical * 3),
                    Align(
                    alignment: Alignment.centerLeft,
                      child: Text(
                      "An OTP will be sent to this number you have provided",
                      style: GoogleFonts.mulish(
                        color: AppTheme.black,
                        fontSize: ResConfig.safeBlockHorizontal * 3,
                        fontWeight: FontWeight.w300,
                      ),
                      ),
                    ),

                        Padding(
                              padding: EdgeInsets.only(
                                  top: ResConfig.blockSizeVertical * 2),
                              child: Center(
                                child: Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  spacing: 13,
                                  direction: Axis.horizontal,
                                  runSpacing: 10,
                                  children: [
                                    otpTextField(context, true, isFirst: true),
                                    otpTextField(context, false,
                                       isSecond: true),
                                    otpTextField(context, false, isThird: true),
                                       otpTextField(context, false, isFourth: true),
                                    otpTextField(context, false, isFifth: true),
                                    otpTextField(context, false, isLast: true),
                                    

                                  ],
                                ),
                              ),
                            ),
                  SizedBox(height: ResConfig.blockSizeVertical * 2),
                
                    SizedBox(height: ResConfig.blockSizeVertical * 3),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.DASHBOARD),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: ResConfig.blockSizeHorizontal * 30,
                            vertical: 10),
                        decoration: BoxDecoration(
                            color: AppTheme.blue,
                            borderRadius: BorderRadius.circular(22)),
                        child: Text(
                          "Verify",
                          style: GoogleFonts.mulish(
                              color: AppTheme.white,
                              fontSize: ResConfig.safeBlockHorizontal * 5,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(height: ResConfig.blockSizeVertical * 2),
                    Center(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(Routes.GET_STARTED),
                            child: Text(
                              "Resend OTP",
                              style: GoogleFonts.mulish(
                                  color: AppTheme.blue,
                                  fontSize: ResConfig.safeBlockHorizontal * 4,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(height: ResConfig.blockSizeVertical * 29),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Terms and Conditions",
                                style: GoogleFonts.mulish(
                                    color: AppTheme.blue,
                                    fontSize:
                                        ResConfig.safeBlockHorizontal * 3.5,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Privacy Policy",
                                style: GoogleFonts.mulish(
                                    color: AppTheme.blue,
                                    fontSize:
                                        ResConfig.safeBlockHorizontal * 3.5,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
