import '../carrito_orgirinal_screen/widgets/compra1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/presentation/descubre_page/descubre_page.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_bottom_bar.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CarritoOrgirinalScreen extends StatelessWidget {
  CarritoOrgirinalScreen({Key? key}) : super(key: key);

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
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      AppbarImage(
                          imagePath: ImageConstant.imgRectangle92,
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
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.h),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: 7.v);
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Compra1ItemWidget();
                                  })),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 49.h, top: 34.v),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 64.h,
                                            decoration:
                                                AppDecoration.outlineBlack9001,
                                            child: Text("Total (C/):",
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleSmallGray70001)),
                                        Container(
                                            width: 64.h,
                                            margin:
                                                EdgeInsets.only(bottom: 16.v),
                                            decoration:
                                                AppDecoration.outlineBlack9001,
                                            child: Text("-",
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleSmallGray70001))
                                      ]))),
                          SizedBox(height: 19.v),
                          CustomElevatedButton(
                              height: 39.v,
                              width: 198.h,
                              text: "COMPRAR AHORA",
                              buttonStyle: CustomButtonStyles.outlineBlackTL19,
                              onTap: () {
                                onTapComprarahora(context);
                              }),
                          SizedBox(height: 44.v),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 31.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgHome,
                                        height: 53.v,
                                        width: 58.h,
                                        margin: EdgeInsets.only(bottom: 49.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage11,
                                        height: 31.v,
                                        width: 35.h)
                                  ]))
                        ])))),
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

  /// Navigates to the carritoOrgirinalTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the carritoOrgirinalTwoScreen.
  onTapComprarahora(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carritoOrgirinalTwoScreen);
  }
}
