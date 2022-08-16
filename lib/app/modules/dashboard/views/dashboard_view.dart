import 'package:energyone_user/app/modules/cart_view/views/cart_view.dart';
import 'package:energyone_user/app/modules/home/views/home_view.dart';
import 'package:energyone_user/app/modules/settings/views/settings.dart';
import 'package:energyone_user/utils/colors.dart';
import 'package:energyone_user/utils/resConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../card_management/views/card_management_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  final controller = Get.find<DashboardController>();
  buildButtonNavigationMenu(context, controller) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 0.5),
        child: SizedBox(
          height: ResConfig.safeBlockVertical * 12,
          child: BottomNavigationBar(
            backgroundColor: AppTheme.primary,
            showSelectedLabels: false,
            selectedIconTheme: IconThemeData(color: AppTheme.blue),
            unselectedIconTheme: IconThemeData(color: AppTheme.grey),
            showUnselectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: ResConfig.safeBlockVertical * 4,
                ),
                label: 'Home',
                backgroundColor: AppTheme.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card_outlined,
                  size: ResConfig.safeBlockVertical * 4,
                ),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_shopping_cart_outlined,
                  size: ResConfig.safeBlockVertical * 4,
                ),
                label: 'cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                  size: ResConfig.safeBlockVertical * 4,
                ),
                label: 'Setting',
              )
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() {
            return Text(
              controller.tabIndexText.value,
              style: GoogleFonts.mulish(
                  color: AppTheme.grey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  fontSize: ResConfig.safeBlockHorizontal * 8),
            );
          }),
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            Icon(
              Icons.notification_add_outlined,
              color: AppTheme.black,
            ),
            SizedBox(
              width: ResConfig.safeBlockHorizontal * 4,
            ),
            IconButton(
              onPressed: () => showDialog<void>(
                context: context,
                barrierDismissible: true,
                // false = user must tap button, true = tap outside dialog
                builder: (BuildContext dialogContext) {
                  return Container(
                    height: 100,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: AppTheme.primary,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [Text("hellos")],
                        )
                      ],
                    ),
                  );
                },
              ),
              icon: SizedBox(
                width: ResConfig.safeBlockHorizontal * 7,
                child: ClipRect(
                  clipBehavior: Clip.antiAlias,
                  child: CircleAvatar(
                    backgroundColor: AppTheme.grey,
                    foregroundImage: NetworkImage(
                        "https://media.istockphoto.com/photos/close-up-portrait-of-happy-african-american-woman-laughing-with-eyes-picture-id1317390984?k=20&m=1317390984&s=612x612&w=0&h=33VHBzWtaarQEA1U4mht4kFtQ81Pvz-smMRqZhUjRQQ="),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: ResConfig.safeBlockHorizontal * 5,
            ),
          ],
          backgroundColor: AppTheme.white,
        ),
        bottomNavigationBar: buildButtonNavigationMenu(context, controller),
        body: Obx(() => IndexedStack(
              index: controller.tabIndex.value,
              children: [
                HomeView(),
                CardManagementView(),
                CartView(),
                SettingsView()
              ],
            )));
  }
}
