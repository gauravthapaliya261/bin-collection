import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key})
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
                  child: Column(children: [
                    Container(
                      color: Colors.green[100],
                      child: ListTile(
                        leading: Text(
                          "05/20",
                          style: TextStyle(fontSize: 13),
                        ),
                        title: Text("You Collection has been PickedUp"),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.yellow[100],
                      child: ListTile(
                        leading: Text(
                          "05/15",
                          style: TextStyle(fontSize: 13),
                        ),
                        title: Text("You Collection is Ready"),
                      ),
                    )
                  ]),
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
          CustomAppBar(
            actions: [
              AppbarTitle(
                text: "Notification ",
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
