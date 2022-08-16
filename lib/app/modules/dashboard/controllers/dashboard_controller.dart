import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final tabIndex = 0.obs;
  final tabIndexText = RxString("Energy One");

  void changeTabIndex(int index) {
    tabIndex.value = index;
    if (tabIndex.value == 1) {
      tabIndexText.value = "Card Management";
    } else if (tabIndex.value == 2) {
      tabIndexText.value = "Your Cart";
    } else if (tabIndex.value == 3) {
      tabIndexText.value = "Settings";
    } else {
      tabIndexText.value = "Energy One";
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
