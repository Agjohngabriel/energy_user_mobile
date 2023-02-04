import 'package:energyone_user/app/modules/otp/views/otpscreen.dart';
import 'package:energyone_user/app/modules/station_details/views/station_details.dart';
import 'package:get/get.dart';

import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/views/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => GetStartedView(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
    ),
    GetPage(
      name: _Paths.STATIONDETAILS,
      page: () => StationDetails(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OTPScreen(),
    ),
  ];
}
