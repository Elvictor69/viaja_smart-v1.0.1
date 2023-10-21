import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';

class RegistrateScreen extends StatelessWidget {
  const RegistrateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Fondo de imagen (ajusta el tamaño según tus necesidades)
              Image.asset(
                ImageConstant.imgImage19,
                fit: BoxFit.cover,
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
              ),
              Align(
                alignment: Alignment.center,
                child: OutlineGradientButton(
                  padding: EdgeInsets.all(16.0),
                  strokeWidth: 1.0,
                  gradient: LinearGradient(
                    begin: Alignment(0.81, 0),
                    end: Alignment(0.81, 0.95),
                    colors: [
                      appTheme.whiteA700.withOpacity(0.6),
                      appTheme.whiteA700.withOpacity(0.6),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomLeft: Radius.circular(23),
                    bottomRight: Radius.circular(23),
                  ),
                  child: Container(
                    width: mediaQueryData.size.width * 0.9,
                    padding: EdgeInsets.all(16.0),
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder23,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 102.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 6.0),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 80.0),
                              Container(
                                width: 263.0,
                                decoration: AppDecoration.outlineBlack900,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Welcome to ViajaSmart\n",
                                        style: CustomTextStyles.titleLargeBold,
                                      ),
                                      TextSpan(
                                        text: "Discovery, Travel and Eat",
                                        style: CustomTextStyles.bodyLargeLight,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              CustomElevatedButton(
                                width: 135.0,
                                text: "Login",
                                margin: EdgeInsets.only(left: 60.0, top: 36.0),
                                leftIcon: Container(
                                  margin: EdgeInsets.only(
                                      right: 6.0), // Aquí se corrigió
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgImage1,
                                    height: 31.0,
                                    width: 33.0,
                                  ),
                                ),
                                onTap: () {
                                  onTapLogin(context);
                                },
                              ),
                              CustomElevatedButton(
                                width: 135.0,
                                text: "Sign up",
                                margin: EdgeInsets.only(left: 60.0, top: 25.0),
                                leftIcon: Container(
                                  margin: EdgeInsets.only(
                                      right: 6.0), // Aquí se corrigió
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: 38.0,
                                    width: 39.0,
                                  ),
                                ),
                                onTap: () {
                                  onTapSignup(context);
                                },
                              ),
                              Container(
                                height: 63.0,
                                width: 173.0,
                                margin: EdgeInsets.only(left: 32.0, top: 36.0),
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 147.0,
                                        decoration:
                                            AppDecoration.outlineBlack900,
                                        child: Text(
                                          "Connect with us",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFloatingicon,
                                            height: 47.0,
                                            width: 73.0,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage20,
                                            height: 37.0,
                                            width: 37.0,
                                            margin: EdgeInsets.only(
                                                left: 46.0, top: 10.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2,
                height: 96.0,
                width: 215.0,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgViajasmart2mesa,
                height: 78.0,
                width: 83.0,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  void onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
