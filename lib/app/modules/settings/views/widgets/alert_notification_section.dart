import 'package:energyone_user/app/modules/settings/views/widgets/settings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/resConfig.dart';

class AlertNotificationSection extends StatelessWidget {
  const AlertNotificationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Alerts and Notification",
            style: GoogleFonts.mulish(
                color: AppTheme.dark_grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontSize: ResConfig.safeBlockHorizontal * 5.7)),
        SizedBox(
          height: 10,
        ),
        SettingsWidget(
            title: "Select notification tone",
            subtitle:
                "I want to receive filling station promotional notifications.",
            hasSwitch: false,),
        SizedBox(
          height: 10,
        ),
        SettingsWidget(
            title: "Allow low priority notifications",
            subtitle:
                "I want to receive filling station promotional notifications.",
            isSet: true),
        SizedBox(
          height: 10,
        ),
        SettingsWidget(
            title: "Vibrate only",
            subtitle:
                "When I receive a new notification only vibrate do not play any sound.",
            isSet: false),
      ],
    );
  }
}
