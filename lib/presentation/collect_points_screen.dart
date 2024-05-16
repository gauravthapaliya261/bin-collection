import 'package:bin_collections/presentation/saved_redeem_dialog.dart';
import 'package:bin_collections/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class CollectPointsScreen extends StatelessWidget {
  const CollectPointsScreen({Key? key})
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
            height: SizeUtils.height,
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 23.v,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 2.h,
                      right: 3.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 36.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
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
                                          onTapImgC1one(context);
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 11.h),
                                        child: CustomIconButton(
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          padding: EdgeInsets.all(3.h),
                                          onTap: () {
                                            onTapIcn(context);
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
                        ),
                        Container(
                          width: 192.h,
                          decoration: AppDecoration.outlinePrimaryContainer1,
                          child: Text(
                            "COUNCIL",
                            textAlign: TextAlign.center,
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle59,
                          height: 149.v,
                          width: 283.h,
                          radius: BorderRadius.circular(
                            15.h,
                          ),
                        ),
                        SizedBox(height: 27.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Career Counseling",
                              style: CustomTextStyles.bodySmall12,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 10.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle47,
                                height: 57.v,
                                width: 95.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                margin: EdgeInsets.only(bottom: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 14.v,
                                ),
                                child: _buildColumn7000(
                                  context,
                                  count: "5,000",
                                  label: "points",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Column(
                                  children: [
                                    _buildSave(context),
                                    SizedBox(height: 8.v),
                                    _buildRedeem(context)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Parent Counseling",
                              style: CustomTextStyles.bodySmall12,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 7.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle49,
                                height: 57.v,
                                width: 95.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                margin: EdgeInsets.only(bottom: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 12.v,
                                ),
                                child: _buildColumn7000(
                                  context,
                                  count: "7,000",
                                  label: "points",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Column(
                                  children: [
                                    _buildSave1(context),
                                    SizedBox(height: 8.v),
                                    _buildRedeem1(context)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 23.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "Adulting Counseling",
                              style: CustomTextStyles.bodySmall12,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 7.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4757x95,
                                height: 57.v,
                                width: 95.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                margin: EdgeInsets.only(top: 3.v),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                child: _buildColumn7000(
                                  context,
                                  count: "8,000",
                                  label: "points",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: Column(
                                  children: [
                                    _buildSave2(context),
                                    SizedBox(height: 8.v),
                                    _buildRedeem2(context)
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "Save",
      buttonStyle: CustomButtonStyles.fillLime,
      onPressed: () {
        onTapSave(context);
      },
    );
  }

  /// Section Widget
  Widget _buildRedeem(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "Redeem",
      onPressed: () {
        onTapRedeem(context);
      },
    );
  }

  /// Section Widget
  Widget _buildSave1(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "Save",
      buttonStyle: CustomButtonStyles.fillLime,
      onPressed: () {
        onTapSave1(context);
      },
    );
  }

  /// Section Widget
  Widget _buildRedeem1(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "Redeem",
      onPressed: () {
        onTapRedeem1(context);
      },
    );
  }

  /// Section Widget
  Widget _buildSave2(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "Save",
      buttonStyle: CustomButtonStyles.fillLime,
      onPressed: () {
        onTapSave2(context);
      },
    );
  }

  /// Section Widget
  Widget _buildRedeem2(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "Redeem",
      onPressed: () {
        onTapRedeem2(context);
      },
    );
  }

  /// Common widget
  Widget _buildColumn7000(
    BuildContext context, {
    required String count,
    required String label,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillYellowB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            count,
            style: CustomTextStyles.labelLargePrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          SizedBox(height: 3.v),
          Text(
            label,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          )
        ],
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

  /// Navigates to the savedScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.savedScreen);
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

  /// Navigates to the savedScreen when the action is triggered.
  onTapSave1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.savedScreen);
  }

  /// Displays a dialog with the [SavedRedeemDialog] content.
  onTapRedeem1(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SavedRedeemDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }

  /// Navigates to the savedScreen when the action is triggered.
  onTapSave2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.savedScreen);
  }

  /// Displays a dialog with the [SavedRedeemDialog] content.
  onTapRedeem2(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SavedRedeemDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }

  /// Navigates to the claimRewardsScreen when the action is triggered.
  onTapTxtCnclbck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.claimRewardsScreen);
  }
}
