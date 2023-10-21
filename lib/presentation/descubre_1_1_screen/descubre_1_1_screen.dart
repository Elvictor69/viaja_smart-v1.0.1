import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/presentation/descubre_page/descubre_page.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Descubre11Screen extends StatelessWidget {
  Descubre11Screen({Key? key}) : super(key: key);

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
                    child: Stack(alignment: Alignment.topLeft, children: [
                      AppbarSubtitle(
                          text: "Discovery, Travel and Eat",
                          margin: EdgeInsets.only(left: 44.h, top: 38.v)),
                      AppbarImage(
                          imagePath: ImageConstant.imgRectangle969x284,
                          margin: EdgeInsets.only(right: 23.h, bottom: 10.v)),
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
                          child: Column(children: [
                    SizedBox(
                        height: 616.v,
                        width: 324.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                        height: 171.v,
                                        width: 321.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCatedral,
                                                  height: 171.v,
                                                  width: 321.h,
                                                  radius: BorderRadius.circular(
                                                      20.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h, top: 15.v),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: 168.h,
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9001,
                                                                child: Text(
                                                                    "Visita la Catedral de Leon",
                                                                    maxLines:
                                                                        null,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium)),
                                                            Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.h,
                                                                        top: 25
                                                                            .v),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineWhiteA,
                                                                child: Text(
                                                                    "Patrimonio de la Humanidad",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelMedium)),
                                                            Container(
                                                                width: 134.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 8
                                                                            .h),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9005,
                                                                child: Text(
                                                                    "¡Descubre la historia!",
                                                                    maxLines:
                                                                        null,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))
                                                          ])))
                                            ])),
                                    SizedBox(height: 19.v),
                                    SizedBox(
                                        height: 171.v,
                                        width: 321.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPoneloya,
                                                  height: 171.v,
                                                  width: 321.h,
                                                  radius: BorderRadius.circular(
                                                      20.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 17.h,
                                                          top: 27.v),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: 197.h,
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9001,
                                                                child: Text(
                                                                    "Sumergete en las arenas de Poneloya",
                                                                    maxLines:
                                                                        null,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium)),
                                                            Container(
                                                                width: 168.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            3.h,
                                                                        top: 22
                                                                            .v),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineWhiteA,
                                                                child: Text(
                                                                    "Las mejores playas",
                                                                    maxLines:
                                                                        null,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelMedium))
                                                          ])))
                                            ])),
                                    SizedBox(height: 14.v),
                                    SizedBox(
                                        height: 158.v,
                                        width: 321.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCasarubendario,
                                                  height: 158.v,
                                                  width: 321.h,
                                                  radius: BorderRadius.circular(
                                                      20.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 17.h,
                                                          top: 20.v),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: 197.h,
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9001,
                                                                child: Text(
                                                                    "Conoce la Casa de Rubén Darío",
                                                                    maxLines:
                                                                        null,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium)),
                                                            SizedBox(
                                                                height: 19.v),
                                                            Container(
                                                                width: 168.h,
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineWhiteA,
                                                                child: Text(
                                                                    "La casa de un genio literario",
                                                                    maxLines:
                                                                        null,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelMedium))
                                                          ])))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 2.h, right: 9.h, bottom: 397.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.h,
                                                vertical: 8.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgFiltrosd),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5.v),
                                                        decoration: AppDecoration
                                                            .outlineBlack9001,
                                                        child: Text("Filtros",
                                                            style: CustomTextStyles
                                                                .titleMediumSemiBold)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage16,
                                                        height: 29.v,
                                                        width: 25.h,
                                                        margin: EdgeInsets.only(
                                                            left: 4.h))
                                                  ]),
                                                  SizedBox(height: 25.v),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtDestino(
                                                            context);
                                                      },
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .outlineBlack9001,
                                                          child: Text("Destino",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge))),
                                                  SizedBox(height: 16.v),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBlack9001,
                                                      child: Text("Comida",
                                                          style: theme.textTheme
                                                              .bodyLarge)),
                                                  SizedBox(height: 19.v),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtTransporte(
                                                            context);
                                                      },
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .outlineBlack9001,
                                                          child: Text(
                                                              "Transporte",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge))),
                                                  SizedBox(height: 19.v),
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineBlack9001,
                                                      child: Text("Alojamiento",
                                                          style: theme.textTheme
                                                              .bodyLarge)),
                                                  SizedBox(height: 19.v)
                                                ])),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgViajasmart202,
                                            height: 34.v,
                                            width: 32.h)
                                      ])))
                        ])),
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 31.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgHome,
                                  height: 53.v,
                                  width: 58.h,
                                  margin: EdgeInsets.only(bottom: 49.v)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup25,
                                  height: 31.adaptSize,
                                  width: 31.adaptSize)
                            ])),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(left: 30.h, top: 4.v),
                            child: IntrinsicWidth(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  Container(
                                      width: 191.h,
                                      margin: EdgeInsets.only(top: 4.v),
                                      decoration:
                                          AppDecoration.outlineBlack9001,
                                      child: Text("Admira el arte en el FOG",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleMedium)),
                                  Container(
                                      width: 191.h,
                                      margin: EdgeInsets.only(bottom: 4.v),
                                      decoration:
                                          AppDecoration.outlineBlack9001,
                                      child: Text("Admira el arte en el FOG",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleMedium))
                                ]))))
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
  onTapTxtDestino(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubreContainerScreen);
  }

  /// Navigates to the descubre2TranporteScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the descubre2TranporteScreen.
  onTapTxtTransporte(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubre2TranporteScreen);
  }
}
