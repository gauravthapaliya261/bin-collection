import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class ProfileTwoScreen extends StatelessWidget {
  const ProfileTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.colorScheme.primary,
              width: 1.h,
            ),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [theme.colorScheme.primary, appTheme.gray500],
            ),
          ),
          child: Container(
            height: SizeUtils.height,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.h),
                    padding: EdgeInsets.symmetric(vertical: 23.v),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgProfileMenu,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 25.h),
                          onTap: () {
                            onTapImgMenuutwoone(context);
                          },
                        ),
                        SizedBox(height: 23.v),
                        Divider(),
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 111.adaptSize,
                            width: 111.adaptSize,
                            padding: EdgeInsets.all(17.h),
                            decoration: AppDecoration.outlinePrimary2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder55,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage14,
                              height: 74.adaptSize,
                              width: 74.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Profile",
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                        SizedBox(height: 63.v),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 32.h,
                              right: 46.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage26,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 9.h,
                                    top: 2.v,
                                    bottom: 8.v,
                                  ),
                                  child: Text(
                                    "Total Points Collected: 1,325",
                                    style: CustomTextStyles.labelSmallPrimary,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 19.v,
                                  width: 118.h,
                                  text: "Redeem Points",
                                  margin: EdgeInsets.only(
                                    left: 14.h,
                                    bottom: 3.v,
                                  ),
                                  buttonStyle: CustomButtonStyles.fillGreen,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Container(
                          width: 287.h,
                          margin: EdgeInsets.only(left: 25.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 27.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.outlinePrimary3,
                          child: Text(
                            "First name",
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 287.h,
                          margin: EdgeInsets.only(left: 25.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.outlinePrimary3,
                          child: Text(
                            "Last name",
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 287.h,
                          margin: EdgeInsets.only(left: 25.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 29.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.outlinePrimary3,
                          child: Text(
                            "Email",
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 287.h,
                          margin: EdgeInsets.only(left: 25.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 29.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.outlinePrimary3,
                          child: Text(
                            "Home Address",
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 287.h,
                          margin: EdgeInsets.only(left: 25.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 29.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.outlinePrimary3,
                          child: Text(
                            "Contact Number",
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                        SizedBox(height: 9.v)
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 70.v,
                      right: 126.h,
                    ),
                    decoration: AppDecoration.outlinePrimary1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 242.h,
                          padding: EdgeInsets.fromLTRB(16.h, 9.v, 16.h, 10.v),
                          decoration: AppDecoration.outlineOnError,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.v),
                              GestureDetector(
                                onTap: () {
                                  onTapTxtAboutus(context);
                                },
                                child: Text(
                                  "About Us",
                                  style: theme.textTheme.labelLarge,
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapTxtBincollection(context);
                          },
                          child: Container(
                            width: 242.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.outlineOnError1,
                            child: Text(
                              "Bin Collection",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Container(
                          width: 242.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 13.v,
                          ),
                          decoration: AppDecoration.outlineOnError1,
                          child: Text(
                            "Rewards and Points",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        GestureDetector(
                          onTap: () {
                            onTapTxtLogout(context);
                          },
                          child: Container(
                            width: 242.h,
                            padding: EdgeInsets.all(14.h),
                            decoration: AppDecoration.outlineOnError2,
                            child: Text(
                              "Log Out",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.v)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the binsCollectedTwoScreen when the action is triggered.
  onTapImgMenuutwoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.binsCollectedTwoScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapTxtAboutus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapTxtBincollection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  /// Navigates to the landingPageScreen when the action is triggered.
  onTapTxtLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.landingPageScreen);
  }
}
