import '../carrito_orgirinal_two_screen/widgets/productrow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/presentation/descubre_page/descubre_page.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_3.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_title.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_bottom_bar.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CarritoOrgirinalTwoScreen extends StatelessWidget {
  CarritoOrgirinalTwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 122.v,
                title: SizedBox(
                    height: 122.v,
                    width: 308.01.h,
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      AppbarImage(
                          imagePath: ImageConstant.imgRectangle972x285,
                          margin: EdgeInsets.only(right: 23.h, bottom: 50.v)),
                      AppbarSubtitle(
                          text: "Discovery, Travel and Eat",
                          margin: EdgeInsets.only(
                              left: 45.h, top: 41.v, bottom: 39.v)),
                      AppbarImage(
                          imagePath: ImageConstant.imgViajasmart2mesa,
                          margin: EdgeInsets.fromLTRB(11.h, 15.v, 239.h, 48.v)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapVolvercarrito(context);
                              },
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 14.h, top: 82.v, right: 104.h),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  decoration: AppDecoration.outlineBlack9007
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: Row(children: [
                                    AppbarImage3(
                                        imagePath: ImageConstant.imgImage31,
                                        margin: EdgeInsets.only(
                                            top: 11.v, bottom: 10.v)),
                                    AppbarTitle(
                                        text: "Mi carrito",
                                        margin: EdgeInsets.only(
                                            left: 11.h, top: 12.v)),
                                    AppbarImage3(
                                        imagePath: ImageConstant.imgImage11,
                                        margin: EdgeInsets.only(
                                            top: 6.v, right: 17.h, bottom: 6.v))
                                  ]))))
                    ])),
                actions: [
                  AppbarImage1(
                      imagePath: ImageConstant.imgImage14,
                      margin: EdgeInsets.fromLTRB(21.h, 23.v, 21.h, 63.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 13.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 332.v,
                                            width: 337.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height: 319.v,
                                                          width: 337.h,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .gray70001,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.h),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    color: appTheme
                                                                        .black900
                                                                        .withOpacity(
                                                                            0.25),
                                                                    spreadRadius:
                                                                        2.h,
                                                                    blurRadius:
                                                                        2.h,
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            4))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 1.v),
                                                          child: ListView
                                                              .separated(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            2.v);
                                                                  },
                                                                  itemCount: 4,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return ProductrowItemWidget();
                                                                  })))
                                                ]))),
                                    CustomElevatedButton(
                                        height: 39.v,
                                        width: 198.h,
                                        text: "Cancelado",
                                        margin: EdgeInsets.only(
                                            left: 71.h, top: 140.v),
                                        buttonStyle:
                                            CustomButtonStyles.outlineBlackTL19,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumLimeA700),
                                    SizedBox(height: 54.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 31.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgHome,
                                                  height: 53.v,
                                                  width: 58.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 49.v)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage11,
                                                  height: 31.v,
                                                  width: 35.h)
                                            ]))
                                  ]))))
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

  /// Navigates to the carritoOrgirinalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the carritoOrgirinalScreen.
  onTapVolvercarrito(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carritoOrgirinalScreen);
  }
}
