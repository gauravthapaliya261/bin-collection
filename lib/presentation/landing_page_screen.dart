import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key})
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
              Stack(
                children: [
                  Container(
                    height: 500,
                    child: Center(
                      child: CustomPaint(
                        size: Size(400, 400),
                        painter: RPSCustomPainter(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 45.h,
                      vertical: 70.v,
                    ),
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
                      height: 130.v,
                      width: 300.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Spacer(),
              CustomElevatedButton(
                height: 56.v,
                text: "LOG IN",
                margin: EdgeInsets.symmetric(horizontal: 34.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                buttonTextStyle: CustomTextStyles.titleLarge_1,
                onPressed: () {
                  print("object");
                  Navigator.pushNamed(context, AppRoutes.loginScreen);
                },
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    onTapTxtDoesnthavean(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 71.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Doesn’t have an account? ",
                            style: CustomTextStyles.bodySmallInter12,
                          ),
                          TextSpan(
                            text: "Register Here",
                            style: CustomTextStyles.bodySmallInter12.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 97.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtDoesnthavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9994500, size.height * 0.1646500);
    path_0.lineTo(size.width * -0.0041750, size.height * 0.1599167);
    path_0.quadraticBezierTo(size.width * 0.0006583, size.height * 0.5395667,
        size.width * 0.0006583, size.height * 0.6641500);
    path_0.cubicTo(
        size.width * 0.0008583,
        size.height * 0.6720833,
        size.width * 0.0874333,
        size.height * 0.7765667,
        size.width * 0.2039417,
        size.height * 0.7786333);
    path_0.quadraticBezierTo(size.width * 0.3081583, size.height * 0.7817167,
        size.width * 0.4982667, size.height * 0.6390667);
    path_0.quadraticBezierTo(size.width * 0.6420333, size.height * 0.5028333,
        size.width * 0.7458750, size.height * 0.5063333);
    path_0.quadraticBezierTo(size.width * 0.8608917, size.height * 0.5080000,
        size.width * 0.9995583, size.height * 0.6704667);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
