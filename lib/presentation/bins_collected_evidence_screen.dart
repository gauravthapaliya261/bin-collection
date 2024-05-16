import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class BinsCollectedEvidenceScreen extends StatelessWidget {
  const BinsCollectedEvidenceScreen({Key? key})
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
              horizontal: 14.h,
              vertical: 20.v,
            ),
            child: Container(
              margin: EdgeInsets.only(right: 2.h),
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillOnError.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildStackPwflOne(context),
                  SizedBox(height: 43.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
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
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 17.v,
                          ),
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
                          margin: EdgeInsets.only(
                            left: 1.h,
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
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "Scheduled Bins for today",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 39.v),
                  SizedBox(
                    height: 255.v,
                    width: 236.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: QrImageView(
                            data: 'https://www.google.com',
                            size: 255.v,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: 173.h,
                    child: Text(
                      "Please have your garbage collector scan this code to confirm that all of your bins have been successfully collected.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmall11,
                    ),
                  ),
                  // SizedBox(height: 28.v),
                  // CustomElevatedButton(
                  //   height: 31.v,
                  //   width: 200.h,
                  //   text: "COMPLETED",
                  //   buttonTextStyle: CustomTextStyles.labelMedium11,
                  //   onPressed: () {
                  //     onTapCompleted(context);
                  //   },
                  // ),
                  // SizedBox(height: 28.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackPwflOne(BuildContext context) {
    return SizedBox(
      height: 59.v,
      width: 352.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 17.v,
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
                    onTap: () {
                      onTapImgImagetwentythre(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      onTap: () {
                        onTapBtnPwflone(context);
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
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.v, top: 5),
              child: SizedBox(
                width: 352.h,
                child: Divider(),
              ),
            ),
          ),
          Positioned(
            top: -15,
            left: 0,
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "←",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the claimRewardsScreen when the action is triggered.
  onTapImgImagetwentythre(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.claimRewardsScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapBtnPwflone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapTxttf(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the successMessageScreen when the action is triggered.
  onTapCompleted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successMessageScreen);
  }
}
