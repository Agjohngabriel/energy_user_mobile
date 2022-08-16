import 'package:energyone_user/app/modules/card_management/views/widgets/card_section.dart';
import 'package:energyone_user/app/modules/card_management/views/widgets/history_section.dart';
import 'package:flutter/material.dart';

class CardManagementView extends StatelessWidget {
  const CardManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          CardSection(),
          SizedBox(
            height: 30,
          ),
          HistorySection()
        ],
      ),
    );
  }
}
