import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';
import 'package:viaja_smart/widgets/custom_text_form_field.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:viaja_smart/database_helper.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController edittextController = TextEditingController();
  TextEditingController edittextoneController = TextEditingController();
  TextEditingController edittexttwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage21,
                height: 800.v,
                width: 351.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 31.h,
                        vertical: 56.v,
                      ),
                      decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder23,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: 47.v,
                            width: 48.h,
                            margin: EdgeInsets.only(left: 10.h),
                            onTap: () {
                              onTapImgArrowleftone(context);
                            },
                          ),
                          Container(
                            height: 60.v,
                            width: 263.h,
                            margin: EdgeInsets.only(left: 4.h, top: 57.v),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 263.h,
                                    decoration: AppDecoration.outlineBlack9001,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Sign up\n",
                                            style: CustomTextStyles.titleLargeGray70001,
                                          ),
                                          TextSpan(
                                            text: "Create an account with us",
                                            style: CustomTextStyles.bodyLargeGray70001,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgViajasmart202,
                                  height: 39.v,
                                  width: 37.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(right: 35.h),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 21.v),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.v),
                            decoration: AppDecoration.outlineBlack9003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 65.h,
                                    margin: EdgeInsets.only(left: 30.h, top: 34.v),
                                    decoration: AppDecoration.outlineBlack9001,
                                    child: Text(
                                      "Name",
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.titleMediumGray50,
                                    ),
                                  ),
                                ),
                                CustomTextFormField(
                                  controller: edittextController,
                                  margin: EdgeInsets.only(left: 22.h, right: 21.h), onChanged: (text) {  },
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30.h, top: 18.v),
                                    decoration: AppDecoration.outlineBlack9001,
                                    child: Text(
                                      "Email",
                                      style: CustomTextStyles.titleMedium16,
                                    ),
                                  ),
                                ),
                                CustomTextFormField(
                                  controller: edittextoneController,
                                  margin: EdgeInsets.only(left: 22.h, right: 21.h), onChanged: (text) {  },
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30.h, top: 18.v),
                                    decoration: AppDecoration.outlineBlack9001,
                                    child: Text(
                                      "Password",
                                      style: CustomTextStyles.titleMedium16,
                                    ),
                                  ),
                                ),
                                CustomTextFormField(
                                  controller: edittexttwoController,
                                  margin: EdgeInsets.only(left: 22.h, right: 21.h),
                                  textInputAction: TextInputAction.done,
                                  obscureText: true, onChanged: (text) {  },
                                ),
                                SizedBox(height: 28.v),
                                CustomElevatedButton(
                                  width: 135.h,
                                  text: "Finish",
                                  buttonStyle: CustomButtonStyles.outlineBlackTL23,
                                  buttonTextStyle: CustomTextStyles.titleMediumRedA400,
                                  onTap: () async {
                                    onTapFinish(context);
                                    final nombre = edittextController.text;
                                    final email = edittextoneController.text;
                                    final password = edittexttwoController.text;
                                    await DatabaseProvider.db.insertUsuario(nombre, nombre, email, password);
                                    onTapFinish(context);
                                  },
                                ),
                                SizedBox(height: 24.v),
                                SizedBox(
                                  height: 61.v,
                                  width: 290.h,
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: 231.h,
                                          decoration: AppDecoration.outlineBlack9001,
                                          child: Text(
                                            "Do you have an account?",
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: GestureDetector(
                                          onTap: () {
                                            onTapTxtLogin(context);
                                          },
                                          child: Container(
                                            width: 130.h,
                                            decoration: AppDecoration.outlineBlack9001,
                                            child: Text(
                                              "Login",
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles.titleSmallBold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 42.v),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapFinish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubreContainerScreen);
  }

  onTapTxtLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
