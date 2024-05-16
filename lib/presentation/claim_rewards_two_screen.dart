import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class ClaimRewardsTwoScreen extends StatelessWidget {
  const ClaimRewardsTwoScreen({Key? key})
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
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 24.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: theme.colorScheme.onError,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Container(
                    height: 791.v,
                    width: 347.h,
                    padding: EdgeInsets.symmetric(vertical: 24.v),
                    decoration: AppDecoration.outlinePrimaryContainer2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle6,
                          height: 153.v,
                          width: 290.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 70.v),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 83.h,
                            margin: EdgeInsets.only(
                              top: 124.v,
                              right: 123.h,
                            ),
                            decoration: AppDecoration.outlinePrimaryContainer1,
                            child: Text(
                              "Council",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 125.h,
                              right: 72.h,
                              bottom: 239.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 126.h,
                                  margin: EdgeInsets.only(right: 24.h),
                                  decoration:
                                      AppDecoration.outlinePrimaryContainer1,
                                  child: Text(
                                    "Community",
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 125.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 134.h,
                                    margin: EdgeInsets.only(left: 16.h),
                                    decoration:
                                        AppDecoration.outlinePrimaryContainer1,
                                    child: Text(
                                      "Services",
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              right: 63.h,
                            ),
                            child: Text(
                              "Search",
                              style:
                                  CustomTextStyles.bodyMediumSecondaryContainer,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 47.v),
                            child: SizedBox(
                              width: 347.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage6,
                          height: 17.adaptSize,
                          width: 17.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 11.v,
                            right: 36.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgProfileMenu,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 19.h),
                          onTap: () {
                            onTapImgMb2one(context);
                          },
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 1.h,
                              top: 24.v,
                              right: 104.h,
                            ),
                            decoration: AppDecoration.outlinePrimary1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 242.h,
                                  padding: EdgeInsets.fromLTRB(
                                      16.h, 9.v, 16.h, 10.v),
                                  decoration: AppDecoration.outlineOnError,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                        )
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

  /// Navigates to the claimRewardsScreen when the action is triggered.
  onTapImgMb2one(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.claimRewardsScreen);
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
