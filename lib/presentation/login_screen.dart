import 'package:bin_collections/presentation/landing_page_screen.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 440,
                        child: Center(
                          child: CustomPaint(
                            size: Size(400, 440),
                            painter: RPSCustomPainter(),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        decoration: BoxDecoration(color: Colors.black
                            // image: DecorationImage(
                            //   image: AssetImage(
                            //     ImageConstant.imgGroup21,
                            //   ),
                            //   fit: BoxFit.cover,
                            // ),
                            ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          // height: 100.v,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  // Container(
                  //   width: double.maxFinite,
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 28.h,
                  //     vertical: 77.v,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage(
                  //         ImageConstant.imgGroup21,
                  //       ),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   child: CustomImageView(
                  //     imagePath: ImageConstant.imgImage1,
                  //     height: 130.v,
                  //     width: 300.h,
                  //   ),
                  // ),
                  // SizedBox(height: 20.v),
                  _buildUserName(context),
                  SizedBox(height: 23.v),
                  _buildPassword(context),
                  SizedBox(height: 60.v),
                  _buildLogInButton(context),
                  SizedBox(height: 9.v),
                  _buildRegisterButton(context),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 39.h,
        right: 38.h,
      ),
      child: CustomTextFormField(
        controller: userNameController,
        hintText: "Username",
        hintStyle: CustomTextStyles.bodyMediumPrimary,
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL5,
        fillColor: theme.colorScheme.onError,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 39.h,
        right: 38.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        hintStyle: CustomTextStyles.bodyMediumPrimary,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL5,
        fillColor: theme.colorScheme.onError,
      ),
    );
  }

  /// Section Widget
  Widget _buildLogInButton(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 255.h,
      text: "LOG IN",
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmall_1,
      onPressed: () {
        if (userNameController.text.isEmpty ||
            passwordController.text.isEmpty) {
          final snackBar = SnackBar(
            content: const Text('Enter Credentials'),
            backgroundColor: (Colors.red),
            // action: SnackBarAction(
            //   label: 'dismiss',
            //   onPressed: () {},
            // ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (userNameController.text == "test@gmail.com" &&
            passwordController.text == "test123") {
          onTapLogInButton(context);
        } else {
          final snackBar = SnackBar(
            content: const Text('Incorrect Credentials'),
            backgroundColor: (Colors.red),
            // action: SnackBarAction(
            //   label: 'dismiss',
            //   onPressed: () {},
            // ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 255.h,
      text: "REGISTER",
      buttonStyle: CustomButtonStyles.fillErrorContainer,
      buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
      onPressed: () {
        onTapRegisterButton(context);
      },
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapLogInButton(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.dashboardScreen,
      (Route<dynamic> route) => false,
    );
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
