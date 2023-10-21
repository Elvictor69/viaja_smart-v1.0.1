import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/presentation/descubre_page/descubre_page.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_2.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_bottom_bar.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';
import 'package:viaja_smart/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DescubreCatedralScreen extends StatelessWidget {
  DescubreCatedralScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 94.v,
                leadingWidth: 359.h,
                leading: AppbarImage2(
                    imagePath: ImageConstant.imgViajasmart2mesa,
                    margin: EdgeInsets.fromLTRB(11.h, 27.v, 290.h, 8.v)),
                centerTitle: true,
                title: AppbarSubtitle(
                    text: "Discovery, Travel and Eat",
                    margin: EdgeInsets.only(top: 53.v)),
                actions: [
                  AppbarImage1(
                      imagePath: ImageConstant.imgImage14,
                      margin: EdgeInsets.fromLTRB(19.h, 38.v, 19.h, 19.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 2.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    SizedBox(
                        height: 171.v,
                        width: 321.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCatedral,
                              height: 171.v,
                              width: 321.h,
                              radius: BorderRadius.circular(20.h),
                              alignment: Alignment.center,
                              onTap: () {
                                onTapImgCatedralone(context);
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 168.h,
                                            decoration:
                                                AppDecoration.outlineBlack9001,
                                            child: Text(
                                                "Visita la Catedral de Leon",
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        SizedBox(height: 22.v),
                                        Container(
                                            decoration:
                                                AppDecoration.outlineWhiteA,
                                            child: Text(
                                                "Patrimonio de la Humanidad",
                                                style: theme
                                                    .textTheme.labelMedium)),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 134.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 7.v),
                                                  decoration: AppDecoration
                                                      .outlineBlack9005,
                                                  child: Text(
                                                      "¡Descubre la historia!",
                                                      maxLines: null,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              CustomElevatedButton(
                                                  height: 30.v,
                                                  width: 130.h,
                                                  text: "Agregar al carrito",
                                                  margin: EdgeInsets.only(
                                                      left: 25.h, top: 20.v),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineBlackTL15,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .labelLargeWhiteA700)
                                            ])
                                      ])))
                        ])),
                    SizedBox(height: 22.v),
                    SizedBox(
                        height: 510.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.h),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 7.h),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCatedral1,
                                            height: 116.v,
                                            width: 303.h,
                                            radius: BorderRadius.circular(19.h),
                                            margin: EdgeInsets.only(
                                                left: 3.h, top: 15.v)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 13.v),
                                            child: Text("Horarios de atención ",
                                                style: CustomTextStyles
                                                    .titleMediumBlack900)),
                                        Container(
                                            width: 169.h,
                                            margin: EdgeInsets.only(
                                                left: 22.h, top: 4.v),
                                            child: Text(
                                                "lunes - domingos: \n8:00 am - 12:00 md\n2:00 pm - 5:00 pm",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleMediumGray700)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 25.v),
                                            child: Text("Tarifas:",
                                                style: CustomTextStyles
                                                    .titleMediumGray800)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 17.h, top: 14.v),
                                            child: Text(
                                                "Tour patio del principe:",
                                                style: CustomTextStyles
                                                    .titleMediumGray800Medium)),
                                        Container(
                                            width: 190.h,
                                            margin: EdgeInsets.only(left: 42.h),
                                            child: Text(
                                                "turista nacional: C50\nturista extranjero: 2\nestudiantes: C25",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleMediumGray800Medium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 17.h, top: 14.v),
                                            child: Text("Tour parte superior:",
                                                style: CustomTextStyles
                                                    .titleMediumGray800Medium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 17.h, top: 97.v),
                                            child: Text("Tour catedral:",
                                                style: CustomTextStyles
                                                    .titleMediumGray800Medium)),
                                        Container(
                                            width: 190.h,
                                            margin: EdgeInsets.only(
                                                left: 34.h, top: 5.v),
                                            child: Text(
                                                "turista nacional: C50\nturista extranjero: 2\nestudiantes: C25",
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleMediumGray800Medium))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  width: double.maxFinite,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 31.h),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgHome,
                                            height: 53.v,
                                            width: 58.h,
                                            margin:
                                                EdgeInsets.only(bottom: 47.v)),
                                        CustomIconButton(
                                            height: 45.v,
                                            width: 44.h,
                                            margin: EdgeInsets.only(
                                                left: 23.h,
                                                top: 5.v,
                                                bottom: 50.v),
                                            padding: EdgeInsets.all(5.h),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup25))
                                      ])))
                        ]))
                  ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Image11:
        return AppRoutes.descubrePage;
      case BottomBarEnum.Image1:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.descubrePage:
        return DescubrePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the descubreContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the descubreContainerScreen.
  onTapImgCatedralone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubreContainerScreen);
  }
}
