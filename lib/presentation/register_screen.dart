import 'package:bin_collections/presentation/successful_registration_dialog.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController registerLanguageController = TextEditingController();

  TextEditingController registerLastNameController = TextEditingController();

  TextEditingController registerEmailController = TextEditingController();

  TextEditingController registerAddressController = TextEditingController();

  TextEditingController registerContactNumberController =
      TextEditingController();

  TextEditingController registerUserNameController = TextEditingController();

  TextEditingController registerPassword1Controller = TextEditingController();

  TextEditingController registerPassword2Controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 23.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 23.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: 61.v,
                      width: 141.h,
                    ),
                    SizedBox(height: 31.v),
                    Container(
                      margin: EdgeInsets.only(right: 1.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillOnError.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              right: 8.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Text(
                                    "←",
                                    style: CustomTextStyles.displayMediumBold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 19.v,
                                    bottom: 7.v,
                                  ),
                                  child: Text(
                                    "Register",
                                    style: CustomTextStyles.headlineSmall25,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 14.v),
                          _buildRegisterLanguage(context),
                          SizedBox(height: 9.v),
                          _buildRegisterLastName(context),
                          SizedBox(height: 9.v),
                          _buildRegisterEmail(context),
                          SizedBox(height: 9.v),
                          _buildRegisterAddress(context),
                          SizedBox(height: 9.v),
                          _buildRegisterContactNumber(context),
                          SizedBox(height: 9.v),
                          _buildRegisterUserName(context),
                          SizedBox(height: 9.v),
                          _buildRegisterPassword1(context),
                          SizedBox(height: 9.v),
                          _buildRegisterPassword2(context),
                          SizedBox(height: 33.v),
                          _buildRegisterContinueButton(context),
                          SizedBox(height: 11.v),
                          _buildRegisterLoginButton(context),
                          SizedBox(height: 11.v)
                        ],
                      ),
                    )
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
  Widget _buildRegisterLanguage(BuildContext context) {
    return CustomTextFormField(
      controller: registerLanguageController,
      hintText: "First name",
    );
  }

  /// Section Widget
  Widget _buildRegisterLastName(BuildContext context) {
    return CustomTextFormField(
      controller: registerLastNameController,
      hintText: "Last name",
    );
  }

  /// Section Widget
  Widget _buildRegisterEmail(BuildContext context) {
    return CustomTextFormField(
      controller: registerEmailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildRegisterAddress(BuildContext context) {
    return CustomTextFormField(
      controller: registerAddressController,
      hintText: "Home Address",
    );
  }

  /// Section Widget
  Widget _buildRegisterContactNumber(BuildContext context) {
    return CustomTextFormField(
      controller: registerContactNumberController,
      hintText: "Contact Number",
      textInputType: TextInputType.number,
    );
  }

  /// Section Widget
  Widget _buildRegisterUserName(BuildContext context) {
    return CustomTextFormField(
      controller: registerUserNameController,
      hintText: "Username",
    );
  }

  /// Section Widget
  Widget _buildRegisterPassword1(BuildContext context) {
    return CustomTextFormField(
      controller: registerPassword1Controller,
      hintText: "Password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildRegisterPassword2(BuildContext context) {
    return CustomTextFormField(
      controller: registerPassword2Controller,
      hintText: "Retype Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildRegisterContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 27.v,
      text: "CONTINUE",
      buttonStyle: CustomButtonStyles.fillPrimaryTL5,
      buttonTextStyle: CustomTextStyles.titleSmall14,
      onPressed: () {
        onTapRegisterContinueButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildRegisterLoginButton(BuildContext context) {
    return CustomElevatedButton(
      height: 27.v,
      text: "LOG IN",
      buttonStyle: CustomButtonStyles.fillErrorContainerTL5,
      buttonTextStyle: CustomTextStyles.titleSmallPrimary14,
      onPressed: () {
        onTapRegisterLoginButton(context);
      },
    );
  }

  /// Displays a dialog with the [SuccessfulRegistrationDialog] content.
  onTapRegisterContinueButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SuccessfulRegistrationDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapRegisterLoginButton(BuildContext context) {
    Navigator.pop(context);
  }
}
