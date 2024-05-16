import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class DashboardTwoScreen extends StatelessWidget {
  const DashboardTwoScreen({Key? key})
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
              colors: [theme.colorScheme.primary, theme.colorScheme.onError],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 21.v,
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: theme.colorScheme.onError,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Container(
                height: 799.v,
                width: 353.h,
                padding: EdgeInsets.symmetric(vertical: 30.v),
                decoration: AppDecoration.fillOnError.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          right: 25.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage13,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage23,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(left: 11.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: CustomIconButton(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                padding: EdgeInsets.all(3.h),
                                onTap: () {
                                  onTapBtnIconbutton(context);
                                },
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 42.v,
                          bottom: 34.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Divider(),
                            SizedBox(height: 46.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 21.h,
                                right: 23.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Wednesday",
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage15,
                                              height: 7.adaptSize,
                                              width: 7.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text(
                                                "May 1, 2024 08:26 EST",
                                                style:
                                                    CustomTextStyles.bodySmall8,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 73.h,
                                    margin: EdgeInsets.only(
                                      left: 113.h,
                                      top: 5.v,
                                      bottom: 7.v,
                                    ),
                                    child: Text(
                                      "48th Mclntosh Rd. Naraweena",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 160.h,
                                margin: EdgeInsets.only(left: 21.h),
                                child: Text(
                                  "sdfdfsdfsdfsdScheduled Bins for today",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 56.v),
                            Container(
                              decoration:
                                  AppDecoration.outlinePrimaryContainer1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage17,
                                    height: 67.adaptSize,
                                    width: 67.adaptSize,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage18,
                                    height: 67.adaptSize,
                                    width: 67.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage19,
                                    height: 67.v,
                                    width: 73.h,
                                    margin: EdgeInsets.only(left: 6.h),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 57.v),
                            CustomElevatedButton(
                              height: 35.v,
                              text: "ALL BINS SUCCESSFULLY COLLECTED",
                              margin: EdgeInsets.only(
                                left: 44.h,
                                right: 45.h,
                              ),
                              buttonTextStyle: CustomTextStyles.labelLarge_1,
                              onPressed: () {
                                onTapAllbins(context);
                              },
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgGn,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 64.h),
                              onTap: () {
                                onTapImgGnone(context);
                              },
                            ),
                            SizedBox(height: 8.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 43.h),
                                child: Text(
                                  "Generate QR Code",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    _buildColumnbgicntwo(context)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnbgicntwo(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 111.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProfileMenu,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 26.h),
              onTap: () {
                onTapImgBgicntwoone(context);
              },
            ),
            Container(
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
                  Container(
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
            SizedBox(height: 77.v),
            CustomImageView(
              imagePath: ImageConstant.imgSc,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 80.h),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 41.h),
              child: Text(
                "Scan collector’s QR Code",
                style: theme.textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapBtnIconbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the binsCollectedEvidenceScreen when the action is triggered.
  onTapAllbins(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.binsCollectedEvidenceScreen);
  }

  /// Navigates to the binsCollectedEvidenceScreen when the action is triggered.
  onTapImgGnone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.binsCollectedEvidenceScreen);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapImgBgicntwoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapTxtAboutus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
