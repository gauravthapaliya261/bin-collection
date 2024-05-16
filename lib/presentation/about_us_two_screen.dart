import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AboutUsTwoScreen extends StatelessWidget {
  const AboutUsTwoScreen({Key? key})
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
              SizedBox(
                height: 593.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildRecyclingSection(context),
                            SizedBox(height: 25.v),
                            _buildDescriptionSection(context),
                            SizedBox(height: 41.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage16,
                              height: 213.v,
                              width: 310.h,
                              alignment: Alignment.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    _buildAboutUsSection(context),
                    _buildBinSection(context)
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              _buildBinCollectionSection(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecyclingSection(BuildContext context) {
    return Container(
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
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionSection(BuildContext context) {
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
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutUsSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 29.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.gradientGrayToPrimary,
        child: Text(
          "About Us",
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBinSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 593.v,
        width: 242.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topLeft,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
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
                              onTapTxtAboutustwo(context);
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
    );
  }

  /// Section Widget
  Widget _buildBinCollectionSection(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBinCollectionSection(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 51.h),
        child: SizedBox(
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
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 173.h,
                  margin: EdgeInsets.only(right: 49.h),
                  decoration: AppDecoration.outlinePrimaryContainer1,
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
      ),
    );
  }

  /// Navigates to the binsCollectedScreen when the action is triggered.
  onTapTxttf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.binsCollectedScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapTxtAboutustwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapTxtBincollection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapBinCollectionSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
