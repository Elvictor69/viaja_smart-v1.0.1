import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/presentation/descubre_page/descubre_page.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_bottom_bar.dart';
import 'package:viaja_smart/widgets/custom_icon_button.dart';

class PerfilDeUsuarioScreen extends StatelessWidget {
  PerfilDeUsuarioScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 70.v,
          title: SizedBox(
            height: 70.21.v,
            width: 308.01.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                AppbarImage(
                  imagePath: ImageConstant.imgRectangle93,
                  margin: EdgeInsets.only(
                    right: 23.h,
                    bottom: 1.v,
                  ),
                ),
                AppbarSubtitle(
                  text: "Discovery, Travel and Eat",
                  margin: EdgeInsets.only(
                    left: 45.h,
                    top: 29.v,
                  ),
                ),
                AppbarImage(
                  imagePath: ImageConstant.imgViajasmart2mesa,
                  margin: EdgeInsets.fromLTRB(11.h, 11.v, 239.h, 1.v),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              imagePath: ImageConstant.imgImage14,
              margin: EdgeInsets.fromLTRB(19.h, 22.v, 19.h, 11.v),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 509.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse5,
                        height: 509.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            right: 23.h,
                            bottom: 33.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.gray400,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder83,
                                ),
                                child: Container(
                                  height: 166.adaptSize,
                                  width: 166.adaptSize,
                                  decoration:
                                      AppDecoration.outlineBlack9008.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder83,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage1,
                                        height: 81.v,
                                        width: 86.h,
                                        alignment: Alignment.center,
                                      ),
                                      CustomIconButton(
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        decoration: IconButtonStyleHelper
                                            .outlineBlackTL22,
                                        alignment: Alignment.topRight,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgLapiz,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 29.v),
                              Text(
                                "Elba Lazo",
                                style: CustomTextStyles.titleSmallBlack900,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 2.v,
                                      bottom: 68.v,
                                    ),
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage25,
                                          height: 37.adaptSize,
                                          width: 37.adaptSize,
                                        ),
                                        SizedBox(height: 4.v),
                                        Text(
                                          "Configuración",
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 40.v),
                                    child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 71.v,
                                          width: 69.h,
                                          padding: EdgeInsets.all(16.h),
                                          decoration: IconButtonStyleHelper
                                              .outlineBlackTL34,
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgViajasmart202,
                                          ),
                                        ),
                                        SizedBox(height: 8.v),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Viaja",
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                              TextSpan(
                                                text: "ndo",
                                                style: CustomTextStyles
                                                    .bodySmallBlack900,
                                              ),
                                              TextSpan(
                                                text: "Smart",
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 64.v),
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage11,
                                          height: 31.v,
                                          width: 35.h,
                                        ),
                                        SizedBox(height: 10.v),
                                        Text(
                                          "Mis compras",
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 191.v),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 31.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 53.v,
                        width: 58.h,
                        margin: EdgeInsets.only(bottom: 49.v),
                      ),
                      CustomIconButton(
                        height: 45.v,
                        width: 44.h,
                        margin: EdgeInsets.only(
                          top: 8.v,
                          right: 10.h,
                          bottom: 49.v,
                        ),
                        padding: EdgeInsets.all(6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
}
