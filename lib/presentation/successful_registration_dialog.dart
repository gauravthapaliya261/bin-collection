import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

class SuccessfulRegistrationDialog extends StatelessWidget {
  const SuccessfulRegistrationDialog({Key? key})
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
          width: 267.h,
          padding: EdgeInsets.symmetric(
            horizontal: 48.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.fillOnError.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 61.v),
              SizedBox(
                width: 171.h,
                child: Text(
                  "Successfully Registered!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLarge30,
                ),
              ),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                height: 36.v,
                width: 116.h,
                text: "DONE",
                buttonStyle: CustomButtonStyles.fillOnPrimary,
                buttonTextStyle: CustomTextStyles.labelLarge13,
                onPressed: () {
                  onTapDone(context);
                },
              )
            ],
          ),
        )
      ],
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapDone(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.dashboardScreen,
      (Route<dynamic> route) => false,
    );
  }
}
