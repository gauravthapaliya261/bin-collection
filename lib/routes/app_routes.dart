import 'package:bin_collections/presentation/about_us_screen.dart';
import 'package:bin_collections/presentation/about_us_two_screen.dart';
import 'package:bin_collections/presentation/app_navigation_screen.dart';
import 'package:bin_collections/presentation/bins_collected_evidence_screen.dart';
import 'package:bin_collections/presentation/bins_collected_screen.dart';
import 'package:bin_collections/presentation/bins_collected_two_screen.dart';
import 'package:bin_collections/presentation/claim_rewards_screen.dart';
import 'package:bin_collections/presentation/claim_rewards_two_screen.dart';
import 'package:bin_collections/presentation/collect_points_screen.dart';
import 'package:bin_collections/presentation/dashboard_screen.dart';
import 'package:bin_collections/presentation/dashboard_two_screen.dart';
import 'package:bin_collections/presentation/landing_page_screen.dart';
import 'package:bin_collections/presentation/login_screen.dart';
import 'package:bin_collections/presentation/notification_screen.dart';
import 'package:bin_collections/presentation/profile_screen.dart';
import 'package:bin_collections/presentation/profile_two_screen.dart';
import 'package:bin_collections/presentation/register_screen.dart';
import 'package:bin_collections/presentation/saved_screen.dart';
import 'package:bin_collections/presentation/success_message_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String aboutUsScreen = '/about_us_screen';
  static const String landingPageScreen = '/landing_page_screen';
  static const String aboutUsTwoScreen = '/about_us_two_screen';
  static const String notificationScreen = '/notification_screen';
  static const String profileScreen = '/profile_screen';
  static const String profileTwoScreen = '/profile_two_screen';
  static const String claimRewardsScreen = '/claim_rewards_screen';
  static const String claimRewardsTwoScreen = '/claim_rewards_two_screen';
  static const String loginScreen = '/login_screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String dashboardTwoScreen = '/dashboard_two_screen';
  static const String binsCollectedEvidenceScreen =
      '/bins_collected_evidence_screen';
  static const String successMessageScreen = '/success_message_screen';
  static const String binsCollectedScreen = '/bins_collected_screen';
  static const String collectPointsScreen = '/collect_points_screen';
  static const String registerScreen = '/register_screen';
  static const String binsCollectedTwoScreen = '/bins_collected_two_screen';
  static const String savedScreen = '/saved_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
  static Map<String, WidgetBuilder> routes = {
    aboutUsScreen: (context) => AboutUsScreen(),
    landingPageScreen: (context) => LandingPageScreen(),
    aboutUsTwoScreen: (context) => AboutUsTwoScreen(),
    profileScreen: (context) => ProfileScreen(),
    profileTwoScreen: (context) => ProfileTwoScreen(),
    claimRewardsScreen: (context) => ClaimRewardsScreen(),
    claimRewardsTwoScreen: (context) => ClaimRewardsTwoScreen(),
    loginScreen: (context) => LoginScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    dashboardTwoScreen: (context) => DashboardTwoScreen(),
    binsCollectedEvidenceScreen: (context) => BinsCollectedEvidenceScreen(),
    successMessageScreen: (context) => SuccessMessageScreen(),
    binsCollectedScreen: (context) => BinsCollectedScreen(),
    collectPointsScreen: (context) => CollectPointsScreen(),
    registerScreen: (context) => RegisterScreen(),
    binsCollectedTwoScreen: (context) => BinsCollectedTwoScreen(),
    savedScreen: (context) => SavedScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    notificationScreen: (context) => NotificationScreen(),
    initialRoute: (context) => LandingPageScreen()
  };
}
