import 'package:energyone_user/app/modules/settings/views/widgets/settings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/resConfig.dart';

class SecuritySection extends StatelessWidget {
  const SecuritySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Security",
            style: GoogleFonts.mulish(
                color: AppTheme.dark_grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontSize: ResConfig.safeBlockHorizontal * 5.7)),
        SizedBox(
          height: 10,
        ),
        SettingsWidget(
            title: "External Card Usage",
            subtitle:
                "Allows others to fund and use your virtual card for transactions.",
            isSet: true),
        SizedBox(
          height: 10,
        ),
        SettingsWidget(
            title: "Hide delicate information",
            subtitle:
                "Hides your balance and part of your card ID on your device",
            isSet: true),
        SizedBox(
          height: 10,
        ),
        SettingsWidget(
          title: "Change password",
          subtitle: "Update your password",
          hasSwitch: false,
        ),
      ],
    );
  }
}
