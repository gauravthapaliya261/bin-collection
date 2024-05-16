import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildAboutUsStack(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  child: Column(
                    children: [
                      _buildRecyclingColumn(context),
                      SizedBox(height: 25.v),
                      _buildDescriptionColumn(context),
                      SizedBox(height: 41.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage16,
                        height: 213.v,
                        width: 310.h,
                      ),
                      SizedBox(height: 33.v),
                      SizedBox(
                        height: 88.v,
                        width: 287.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle27,
                              height: 88.v,
                              width: 287.h,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.center,
                              onTap: () {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  AppRoutes.dashboardScreen,
                                  (Route<dynamic> route) => false,
                                );
                              },
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 173.h,
                                margin: EdgeInsets.only(right: 49.h),
                                decoration:
                                    AppDecoration.outlinePrimaryContainer1,
                                child: Text(
                                  "Bin Collection ",
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.headlineSmallOnError,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v)
                    ],
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
  Widget _buildAboutUsStack(BuildContext context) {
    return SizedBox(
      height: 56.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                right: 61.h,
              ),
              child: Text(
                "ABOUT US",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          CustomAppBar(
            actions: [
              AppbarTitle(
                text: "About Us",
                margin: EdgeInsets.fromLTRB(29.h, 14.v, 29.h, 13.v),
              )
            ],
            styleType: Style.bgGradientnamegray700nameprimary,
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
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text(
                    "←",
                    style: CustomTextStyles.displayMediumOnError,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecyclingColumn(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(right: 63.h),
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlinePrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8.v),
            Container(
              width: 305.h,
              decoration: AppDecoration.outlinePrimaryContainer1,
              child: Text(
                "Recycling is collected either weekly or on alternate weeks and vegetation fortnightly depending on your address. ",
                maxLines: null,
                // overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionColumn(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(left: 59.h),
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.outlinePrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          width: 305.h,
          decoration: AppDecoration.outlinePrimaryContainer1,
          child: Text(
            "We also have a fleet of brand new trucks with the latest technology, reducing emissions and fully enclosed hoppers to prevent litter and reduce odour. ",
            maxLines: null,
            // overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ),
    );
  }

  /// Navigates to the aboutUsTwoScreen when the action is triggered.
  onTapTxttf(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.dashboardScreen,
      (Route<dynamic> route) => false,
    );
  }
}
