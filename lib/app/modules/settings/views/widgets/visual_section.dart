import 'package:energyone_user/app/modules/settings/views/widgets/settings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/resConfig.dart';

class VisualSection extends StatelessWidget {
  const VisualSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Visual",
            style: GoogleFonts.mulish(
                color: AppTheme.dark_grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontSize: ResConfig.safeBlockHorizontal * 5.6)),
        SizedBox(
          height: 10,
        ),
        SettingsWidget(
            title: "Daylight Theme",
            subtitle: "Dark mode inverts the theme colour of the app.",
            isSet: true),
      ],
    );
  }
}
