import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController contactnumbervaController = TextEditingController();

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
              colors: [theme.colorScheme.primary, appTheme.gray500],
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
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 9.v),
                    Container(
                      margin: EdgeInsets.only(right: 1.h),
                      padding: EdgeInsets.symmetric(vertical: 23.v),
                      decoration: AppDecoration.fillOnError.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProfileMenu,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 25.h),
                            onTap: () {
                              onTapImgProfilemenuone(context);
                            },
                          ),
                          SizedBox(height: 23.v),
                          Divider(),
                          SizedBox(height: 12.v),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 111.adaptSize,
                              width: 111.adaptSize,
                              padding: EdgeInsets.all(17.h),
                              decoration:
                                  AppDecoration.outlinePrimary2.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder55,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgImage14,
                                height: 74.adaptSize,
                                width: 74.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Profile",
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                          SizedBox(height: 63.v),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 32.h,
                                right: 46.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage26,
                                    height: 22.adaptSize,
                                    width: 22.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 9.h,
                                      top: 2.v,
                                      bottom: 8.v,
                                    ),
                                    child: Text(
                                      "Total Points Collected: 1,325",
                                      style: CustomTextStyles.labelSmallPrimary,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 14.h,
                                      bottom: 3.v,
                                    ),
                                    child: Column(
                                      children: [_buildRedeempoints(context)],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildFirstName(context),
                          SizedBox(height: 9.v),
                          _buildLastName(context),
                          SizedBox(height: 9.v),
                          _buildEmail(context),
                          SizedBox(height: 9.v),
                          _buildAddress(context),
                          SizedBox(height: 9.v),
                          _buildContactnumberva(context),
                          SizedBox(height: 9.v)
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
  Widget _buildRedeempoints(BuildContext context) {
    return CustomElevatedButton(
      height: 19.v,
      width: 118.h,
      text: "Redeem Points",
      buttonStyle: CustomButtonStyles.fillGreen,
      onPressed: () {
        onTapRedeempoints(context);
      },
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: firstNameController,
        hintText: "First name",
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: lastNameController,
        hintText: "Last name",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: addressController,
        hintText: "Home Address",
      ),
    );
  }

  /// Section Widget
  Widget _buildContactnumberva(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: contactnumbervaController,
        hintText: "Contact Number",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.number,
      ),
    );
  }

  /// Navigates to the profileTwoScreen when the action is triggered.
  onTapImgProfilemenuone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileTwoScreen);
  }

  /// Navigates to the collectPointsScreen when the action is triggered.
  onTapRedeempoints(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.collectPointsScreen);
  }
}
