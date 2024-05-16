import 'package:bin_collections/presentation/saved_redeem_dialog.dart';
import 'package:bin_collections/presentation/successful_registration_dialog.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnError,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "About Us",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Landing Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.landingPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About Us - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutUsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Claim Rewards",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.claimRewardsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Claim Rewards - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.claimRewardsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DASHBOARD",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DASHBOARD - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "bins collected evidence",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.binsCollectedEvidenceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "success message",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successMessageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bins collected",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.binsCollectedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "collect points",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.collectPointsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Successful Registration - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context, SuccessfulRegistrationDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bins collected - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.binsCollectedTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "saved",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.savedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "saved - REDEEM - Dialog",
                          onTapScreenTitle: () =>
                              onTapDialogTitle(context, SavedRedeemDialog()),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnError,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: theme.colorScheme.primary,
          )
        ],
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnError,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
