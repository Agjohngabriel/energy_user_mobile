import 'package:energyone_user/utils/resConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/colors.dart';

class SettingsWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSet;
  final bool hasSwitch;
  SettingsWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.isSet = false,
    this.hasSwitch = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResConfig().init(context);
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppTheme.primary,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        children: [
          Icon(
            Icons.shield_moon,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Flexible(
            flex: 7,
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.mulish(
                      fontWeight: FontWeight.bold,
                      fontSize: ResConfig.safeBlockHorizontal * 4),
                ),
                Text(
                  subtitle,
                  maxLines: 2,
                  style: GoogleFonts.mulish(
                      fontSize: ResConfig.safeBlockHorizontal * 2.2),
                ),
              ],
            ),
          ),
          hasSwitch ? FlutterSwitch(
            width: ResConfig.safeBlockHorizontal * 14,
            value: isSet,
            showOnOff: true,
            onToggle: (val) {},
          ) : Icon(Icons.arrow_forward_ios_outlined),
        ],
      ),
    );
  }
}
