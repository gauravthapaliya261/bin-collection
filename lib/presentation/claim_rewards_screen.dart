import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class ClaimRewardsScreen extends StatelessWidget {
  const ClaimRewardsScreen({Key? key})
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
              colors: [theme.colorScheme.primary, appTheme.gray500],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 24.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding: EdgeInsets.symmetric(vertical: 24.v),
                  decoration: AppDecoration.outlinePrimaryContainer2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          onTapView(context);
                        },
                        child: SizedBox(
                          height: 48.v,
                          width: 347.h,
                        ),
                      ),
                      SizedBox(height: 34.v),
                      Text(
                        "Claim Rewards with ePoints",
                        style: CustomTextStyles.titleLargePrimary_1,
                      ),
                      SizedBox(height: 53.v),
                      SizedBox(
                        height: 153.v,
                        width: 290.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle6,
                              height: 153.v,
                              width: 290.h,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: (() => Navigator.pushNamed(
                                    context, AppRoutes.collectPointsScreen)),
                                child: Container(
                                  width: 83.h,
                                  decoration:
                                      AppDecoration.outlinePrimaryContainer1,
                                  child: Text(
                                    "Council",
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 53.v)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the claimRewardsTwoScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.claimRewardsTwoScreen);
  }
}
