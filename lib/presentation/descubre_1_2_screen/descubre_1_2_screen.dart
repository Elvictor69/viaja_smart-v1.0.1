import '../descubre_1_2_screen/widgets/visitcathedral1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/presentation/descubre_page/descubre_page.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_bottom_bar.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';
import 'package:viaja_smart/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class Descubre12Screen extends StatelessWidget {
  Descubre12Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: SizedBox(
                    height: 79.v,
                    width: 307.h,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      AppbarImage(
                          imagePath: ImageConstant.imgRectangle91,
                          margin: EdgeInsets.only(right: 23.h, bottom: 10.v)),
                      AppbarSubtitle(
                          text: "Discovery, Travel and Eat",
                          margin: EdgeInsets.only(left: 44.h, top: 38.v)),
                      AppbarImage(
                          imagePath: ImageConstant.imgViajasmart2mesa,
                          margin: EdgeInsets.fromLTRB(10.h, 12.v, 239.h, 9.v))
                    ])),
                actions: [
                  AppbarImage1(
                      imagePath: ImageConstant.imgImage14,
                      margin: EdgeInsets.fromLTRB(21.h, 23.v, 21.h, 20.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 18.h, right: 27.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomElevatedButton(
                                              width: 146.h,
                                              text: "Filtros",
                                              rightIcon: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 4.h),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage16,
                                                      height: 29.v,
                                                      width: 25.h)),
                                              buttonTextStyle: CustomTextStyles
                                                  .titleMediumSemiBold,
                                              onTap: () {
                                                onTapFiltros(context);
                                              }),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgViajasmart202,
                                              height: 34.v,
                                              width: 32.h)
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 17.h, top: 39.v, right: 17.h),
                                    child: ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 19.v);
                                        },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return Visitcathedral1ItemWidget(
                                              onTapImgImageClass: () {
                                            onTapImgImageClass(context);
                                          });
                                        })),
                                Container(
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
                                              margin: EdgeInsets.only(
                                                  bottom: 49.v)),
                                          CustomIconButton(
                                              height: 45.v,
                                              width: 44.h,
                                              margin: EdgeInsets.only(
                                                  left: 24.h,
                                                  top: 5.v,
                                                  bottom: 52.v),
                                              padding: EdgeInsets.all(6.h),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup25))
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

  /// Navigates to the descubreCatedralScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the descubreCatedralScreen.
  onTapImgImageClass(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubreCatedralScreen);
  }

  /// Navigates to the descubre11Screen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the descubre11Screen.
  onTapFiltros(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubre11Screen);
  }
}
