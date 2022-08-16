import 'package:energyone_user/app/modules/settings/views/widgets/alert_notification_section.dart';
import 'package:energyone_user/app/modules/settings/views/widgets/security_section.dart';
import 'package:energyone_user/app/modules/settings/views/widgets/visual_section.dart';
import 'package:flutter/material.dart';
import '../../../../utils/resConfig.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResConfig().init(context);
    return Padding(padding: EdgeInsets.all(15), child: ListView(
      children: [
        VisualSection(),
        SizedBox(height: 21,),
        AlertNotificationSection(),
        SizedBox(height: 21,),
        SecuritySection()
      ],
    ));
  }
}
