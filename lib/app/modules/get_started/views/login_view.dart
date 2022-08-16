import 'package:energyone_user/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/resConfig.dart';
import '../../../../widget/phone.dart';

class LoginView extends StatelessWidget {
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: ResConfig.safeBlockVertical * 30,
                decoration: BoxDecoration(
                    color: AppTheme.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: ResConfig.safeBlockVertical * 15,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: ResConfig.safeBlockHorizontal * 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "to Energy One app.",
                        style: GoogleFonts.mulish(
                            color: AppTheme.white,
                            fontSize: ResConfig.safeBlockHorizontal * 6,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ResConfig.safeBlockHorizontal * 10),
                child: Column(
                  children: [
                    SizedBox(height: ResConfig.blockSizeVertical * 3),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.mulish(
                            fontSize: ResConfig.safeBlockHorizontal * 6,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blue,
                            letterSpacing: 0.4),
                      ),
                    ),
                    SizedBox(height: ResConfig.blockSizeVertical * 3),
                    SizedBox(
                      width: ResConfig.safeBlockHorizontal * 90,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                                primary: AppTheme.blue,
                              ),
                        ),
                        child: IntlPhoneField(
                          disableLengthCheck: true,
                          dropdownIconPosition: IconPosition.trailing,
                          showCountryFlag: false,
                          initialCountryCode: "NG",
                          cursorColor: AppTheme.blue,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.white.withOpacity(0.4)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: AppTheme.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            filled: true,
                            fillColor: AppTheme.white,
                            hintText: 'Phone Number',
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
                    SizedBox(height: ResConfig.blockSizeVertical * 2),
                    SizedBox(
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
                                borderSide: BorderSide(
                                    color: AppTheme.white.withOpacity(0.4)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: AppTheme.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            filled: true,
                            fillColor: AppTheme.white,
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                            iconColor: AppTheme.grey,
                            prefixIconColor: AppTheme.grey,
                            hintText: 'Password',
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
                    SizedBox(height: ResConfig.blockSizeVertical * 3),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.DASHBOARD),
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
                    SizedBox(height: ResConfig.blockSizeVertical * 6),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Don't have an account?",
                            style: GoogleFonts.mulish(
                              color: AppTheme.black,
                              fontSize: ResConfig.safeBlockHorizontal * 5,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: ResConfig.blockSizeVertical * 0.8),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.GET_STARTED),
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.mulish(
                                  color: AppTheme.blue,
                                  fontSize: ResConfig.safeBlockHorizontal * 6,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(height: ResConfig.blockSizeVertical * 20),
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
