import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class SuccessMessageScreen extends StatelessWidget {
  const SuccessMessageScreen({Key? key})
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
              horizontal: 16.h,
              vertical: 27.v,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillOnError.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildStackDdOne(context),
                  SizedBox(height: 43.v),
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
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Scheduled Bins for today",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 67.v),
                  SizedBox(
                    height: 198.v,
                    width: 239.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 57.h,
                              vertical: 46.v,
                            ),
                            decoration:
                                AppDecoration.outlinePrimaryContainer2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: SizedBox(
                              width: 122.h,
                              child: Text(
                                "SUCCESS! \nThis has been recorded.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleLargePrimary_1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    height: 31.v,
                    width: 200.h,
                    text: "PROCEED",
                    buttonTextStyle: CustomTextStyles.labelMedium11,
                    onPressed: () {
                      onTapProceed(context);
                    },
                  ),
                  SizedBox(height: 81.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 40.h,
                      right: 43.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSc,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              SizedBox(height: 11.v),
                              Text(
                                "Scan collector’s QR Code",
                                style: theme.textTheme.bodySmall,
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGn,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                            ),
                            SizedBox(height: 8.v),
                            Text(
                              "Generate QR Code",
                              style: theme.textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 47.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackDdOne(BuildContext context) {
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
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage23,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      onTap: () {
                        onTapBtnIconpfplone(context);
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
              padding: EdgeInsets.only(bottom: 2.v),
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
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  onTapTxttf(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
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

  /// Navigates to the profileScreen when the action is triggered.
  onTapBtnIconpfplone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the binsCollectedEvidenceScreen when the action is triggered.
  onTapTxttf(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the binsCollectedScreen when the action is triggered.
  onTapProceed(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.binsCollectedScreen,
      (Route<dynamic> route) => false,
    );
  }
}
