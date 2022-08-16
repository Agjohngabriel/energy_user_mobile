import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../data/data.dart';

class OnboardingController extends GetxController {
  // ignore: todo
  //TODO: Implement OnboardingController

  final pageController = PageController();
  final selectedPageIndex = 0.obs;

  forwardAction() {
    pageController.animateToPage(selectedPageIndex.toInt() + 1,
        duration: 900.milliseconds, curve: Curves.ease);
  }
  backAction() {
    pageController.animateToPage(selectedPageIndex.toInt() - 1,
        duration: 900.milliseconds, curve: Curves.ease);
  }
  skip() {
    pageController.animateToPage(pages.length - 1,
        duration: 900.milliseconds, curve: Curves.ease);
  }

  bool get isLastPage => selectedPageIndex.value == pages.length - 1;
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

  List<Onboardingdetails> pages = [
    Onboardingdetails.fromJson(
        {"title": "Welcome", "description": "to Energy One User app."}),
    Onboardingdetails.fromJson(
        {"title": "Welcome", "description": "to Energy One User app."}),
    Onboardingdetails.fromJson(
        {"title": "Welcome", "description": "to Energy One User app."}),
    Onboardingdetails.fromJson(
        {"title": "Welcome", "description": "to Energy One User app."}),
    Onboardingdetails.fromJson(
        {"title": "Welcome", "description": "to Energy One User app."}),
  ];
}
