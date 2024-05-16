import 'package:bin_collections/presentation/saved_redeem_dialog.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key})
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
              horizontal: 34.h,
              vertical: 40.v,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 14.v),
              decoration: AppDecoration.fillOnError.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildStackB1One(context),
                  SizedBox(height: 11.v),
                  Text(
                    "SAVED REWARDS",
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  SizedBox(height: 31.v),
                  Text(
                    "Planting ",
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                  SizedBox(height: 11.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle62,
                    height: 103.v,
                    width: 196.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildColumnRedeem(context),
                  SizedBox(height: 23.v),
                  Text(
                    "Moneytalks",
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle63,
                    height: 114.v,
                    width: 186.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  CustomElevatedButton(
                    height: 16.v,
                    width: 77.h,
                    text: "REDEEM",
                    buttonStyle: CustomButtonStyles.fillGreen1,
                    buttonTextStyle: theme.textTheme.labelMedium!,
                    onPressed: () {
                      onTapRedeem(context);
                    },
                  ),
                  SizedBox(height: 23.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackB1One(BuildContext context) {
    return SizedBox(
      height: 59.v,
      width: 318.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 18.v,
                right: 15.h,
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
                      onTapImgC1one(context);
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapIcn(context);
                    },
                    child: Container(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(left: 11.h),
                      padding: EdgeInsets.all(2.h),
                      decoration: AppDecoration.outlinePrimary2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
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
          Positioned(
            top: -15,
            left: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  onTapTxtCnclbck(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "←",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: SizedBox(
                width: 318.h,
                child: Divider(),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnRedeem(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnRedeem(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 113.h),
        child: Container(
          width: 77.h,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillGreen,
          child: Text(
            "REDEEM",
            style: theme.textTheme.labelMedium,
          ),
        ),
      ),
    );
  }

  /// Navigates to the claimRewardsScreen when the action is triggered.
  onTapImgC1one(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.claimRewardsScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapIcn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the claimRewardsScreen when the action is triggered.
  onTapTxtCnclbck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.claimRewardsScreen);
  }

  /// Displays a dialog with the [SavedRedeemDialog] content.
  onTapColumnRedeem(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SavedRedeemDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }

  /// Displays a dialog with the [SavedRedeemDialog] content.
  onTapRedeem(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SavedRedeemDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }
}
