import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore_for_file: must_be_immutable

class SavedRedeemDialog extends StatelessWidget {
  const SavedRedeemDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 208.h,
          padding: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillOnError.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage27,
                height: 37.adaptSize,
                width: 37.adaptSize,
              ),
              SizedBox(height: 13.v),
              SizedBox(
                width: 142.h,
                child: Text(
                  "SUCCESSFULLY REDEEMED",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargePrimary_1,
                ),
              ),
              SizedBox(height: 26.v),
              SizedBox(
                height: 25.v,
                width: 108.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                        onTap: () {
                          onTapView(context);
                        },
                        child: Container(
                          height: 25.v,
                          width: 108.h,
                          decoration: BoxDecoration(
                            color: appTheme.green900,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "OK",
                        style: theme.textTheme.titleLarge,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Navigates to the binsCollectedScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.binsCollectedScreen,
      (Route<dynamic> route) => false,
    );
  }
}
