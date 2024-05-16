import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class BinsCollectedTwoScreen extends StatelessWidget {
  const BinsCollectedTwoScreen({Key? key})
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
              vertical: 23.v,
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: theme.colorScheme.onError,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Container(
                height: 796.v,
                width: 353.h,
                padding: EdgeInsets.symmetric(vertical: 36.v),
                decoration: AppDecoration.fillOnError.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGn,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 64.h,
                        bottom: 47.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 43.h,
                          bottom: 27.v,
                        ),
                        child: Text(
                          "Generate QR Code",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 25.h),
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
                            GestureDetector(
                              onTap: () {
                                onTapFourteen(context);
                              },
                              child: Container(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 11.h),
                                padding: EdgeInsets.all(2.h),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage14,
                                  height: 13.adaptSize,
                                  width: 13.adaptSize,
                                  alignment: Alignment.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 34.v),
                        child: SizedBox(
                          width: 352.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 87.v,
                          right: 22.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                              margin: EdgeInsets.only(bottom: 10.v),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgImage21,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 73.h,
                              margin: EdgeInsets.only(left: 1.h),
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
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 64.h,
                          right: 64.h,
                          bottom: 166.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration:
                                  AppDecoration.outlinePrimaryContainer1,
                              child: Text(
                                "MAY 2024",
                                style: CustomTextStyles.titleLargePrimary,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage24,
                              height: 266.v,
                              width: 224.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    _buildColumnsdfsdf(context)
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
  Widget _buildColumnsdfsdf(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 109.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProfileMenu,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 23.h),
              onTap: () {
                onTapImgSdfsdfone(context);
              },
            ),
            SizedBox(height: 10.v),
            SizedBox(
              height: 556.v,
              width: 244.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup16,
                    height: 40.v,
                    width: 134.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 133.v),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(right: 2.h),
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
                                    onTapTxtAboutusthree(context);
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
                              vertical: 10.v,
                            ),
                            decoration: AppDecoration.outlineOnError3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.v),
                                Text(
                                  "Bin Collection",
                                  style: theme.textTheme.labelLarge,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 242.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 12.v,
                            ),
                            decoration: AppDecoration.outlineOnError3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                Text(
                                  "Rewards and Points",
                                  style: theme.textTheme.labelLarge,
                                )
                              ],
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
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        top: 47.v,
                        right: 58.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                  imagePath: ImageConstant.imgImage15,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "May 1, 2024 08:26 EST",
                                    style: CustomTextStyles.bodySmall8,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "Scheduled Bins for today",
                            style: theme.textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage25,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 55.h,
                      bottom: 220.v,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 59.v),
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
  onTapFourteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the binsCollectedScreen when the action is triggered.
  onTapImgSdfsdfone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.binsCollectedScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapTxtAboutusthree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
