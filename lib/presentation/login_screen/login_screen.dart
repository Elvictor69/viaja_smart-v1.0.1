import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';
import 'package:viaja_smart/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController edittextController = TextEditingController();

  TextEditingController edittextoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgImage19),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                                left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                            strokeWidth: 1.h,
                            gradient: LinearGradient(
                                begin: Alignment(0.81, 0),
                                end: Alignment(0.81, 0.95),
                                colors: [
                                  appTheme.whiteA700.withOpacity(0.6),
                                  appTheme.whiteA700.withOpacity(0.6)
                                ]),
                            corners: Corners(
                                topLeft: Radius.circular(23),
                                topRight: Radius.circular(23),
                                bottomLeft: Radius.circular(23),
                                bottomRight: Radius.circular(23)),
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 26.h, vertical: 56.v),
                                decoration: AppDecoration.outline.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder23),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: 47.v,
                                          width: 48.h,
                                          margin: EdgeInsets.only(left: 6.h),
                                          onTap: () {
                                            onTapImgArrowleftone(context);
                                          }),
                                      Container(
                                          height: 61.v,
                                          width: 263.h,
                                          margin: EdgeInsets.only(
                                              left: 9.h, top: 51.v),
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        width: 263.h,
                                                        decoration: AppDecoration
                                                            .outlineBlack9001,
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "Welcome Back\n",
                                                                      style: CustomTextStyles
                                                                          .titleLargeGray70001),
                                                                  TextSpan(
                                                                      text:
                                                                          "Login your account",
                                                                      style: CustomTextStyles
                                                                          .bodyLargeGray70001)
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgViajasmart202,
                                                    height: 39.v,
                                                    width: 37.h,
                                                    alignment:
                                                        Alignment.topRight,
                                                    margin: EdgeInsets.only(
                                                        right: 53.h))
                                              ])),
                                      Container(
                                          height: 460.v,
                                          width: 303.h,
                                          margin: EdgeInsets.only(
                                              left: 5.h,
                                              top: 21.v,
                                              bottom: 47.v),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        margin: EdgeInsets.only(
                                                            right: 5.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    21.h,
                                                                vertical: 28.v),
                                                        decoration: AppDecoration
                                                            .outlineBlack9002
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder15),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Container(
                                                                  width: 65.h,
                                                                  margin: EdgeInsets.only(
                                                                      left:
                                                                          13.h,
                                                                      top:
                                                                          14.v),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .outlineBlack9001,
                                                                  child: Text(
                                                                      "Email",
                                                                      maxLines:
                                                                          null,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: CustomTextStyles
                                                                          .titleMedium16)),
                                                              CustomTextFormField(
                                                                  controller:
                                                                      edittextController,
                                                                  margin: EdgeInsets.only(
                                                                      left: 5.h,
                                                                      right:
                                                                          4.h)),
                                                              Container(
                                                                  margin: EdgeInsets.only(
                                                                      left:
                                                                          13.h,
                                                                      top:
                                                                          18.v),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .outlineBlack9001,
                                                                  child: Text(
                                                                      "Password",
                                                                      style: CustomTextStyles
                                                                          .titleMedium16)),
                                                              CustomTextFormField(
                                                                  controller:
                                                                      edittextoneController,
                                                                  margin: EdgeInsets.only(
                                                                      left: 5.h,
                                                                      right:
                                                                          4.h),
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  obscureText:
                                                                      true),
                                                              SizedBox(
                                                                  height: 60.v),
                                                              CustomElevatedButton(
                                                                  width: 135.h,
                                                                  text:
                                                                      "Finish",
                                                                  buttonStyle:
                                                                      CustomButtonStyles
                                                                          .outlineBlackTL23,
                                                                  buttonTextStyle:
                                                                      CustomTextStyles
                                                                          .titleMediumRedA400,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  onTap: () {
                                                                  onTapFinish(context);
                                                                  }),
                                                                  
                                                              SizedBox(
                                                                  height: 14.v),
                                                              SizedBox(
                                                                  height: 27.v,
                                                                  width: 254.h,
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topLeft,
                                                                            child: Padding(padding: EdgeInsets.only(top: 9.v), child: SizedBox(width: 105.h, child: Divider()))),
                                                                        
                                                                          Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                width: 20.h,
                                                                                decoration: AppDecoration.outlineBlack9001,
                                                                                child: Text("Or", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium))),

                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            child: Padding(padding: EdgeInsets.only(top: 9.v), child: SizedBox(width: 105.h, child: Divider())))
                                                                      ])),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      width:
                                                                          100.h,
                                                                      decoration:
                                                                          AppDecoration
                                                                              .outlineBlack9001,
                                                                      child: Text(
                                                                          "Conect with us",
                                                                          maxLines:
                                                                              null,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium))),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 40
                                                                              .h,
                                                                          top: 3
                                                                              .v),
                                                                  child: Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgFloatingicon,
                                                                            height: 47.v,
                                                                            width: 73.h),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage20,
                                                                            height: 37.adaptSize,
                                                                            width: 37.adaptSize,
                                                                            margin: EdgeInsets.only(left: 41.h, top: 10.v))
                                                                      ]))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.center,
                                                    child: Container(
                                                        height: 60.v,
                                                        width: 303.h,
                                                        margin: EdgeInsets.only(
                                                            bottom: 2.v,left: 10),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            children: [
                                                            
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Container(
                                                                      width:
                                                                          160.h,
                                                                      decoration:
                                                                          AppDecoration
                                                                              .outlineBlack9001,
                                                                      child: Text(
                                                                          "Don't have an account?",
                                                                          maxLines:
                                                                              null,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium))),
                                                            
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child:
                                                                      GestureDetector(
                                                                          
                                                                          onTap:
                                                                              () {
                                                                            onTapTxtSignup(context);
                                                                          },
                                                                          child: Container(
                                                                              margin: EdgeInsets.only(),
                                                                              width: 140.h,
                                                                              decoration: AppDecoration.outlineBlack9001,
                                                                              child: Text("sign up", maxLines: null, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallBold))))
                                                            ])))
                                              ]))
                                    ]))))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signUpScreen.
  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapFinish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubreContainerScreen);
  }

}
