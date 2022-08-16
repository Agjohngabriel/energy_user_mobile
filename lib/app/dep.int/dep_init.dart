import 'package:energyone_user/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

import '../modules/dashboard/controllers/dashboard_controller.dart';
import '../modules/get_started/controllers/get_started_controller.dart';
import '../modules/home/controllers/home_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => GetStartedController());
  Get.lazyPut(() => OnboardingController());
  Get.lazyPut(() => DashboardController());
  Get.lazyPut(() => HomeController());
}
