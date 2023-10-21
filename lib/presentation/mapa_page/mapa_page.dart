import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MapaPage extends StatelessWidget {
  const MapaPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(
                height: 184.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse5184x360,
                      height: 184.v,
                      width: 360.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomAppBar(
                            height: 70.v,
                            title: SizedBox(
                              height: 70.21.v,
                              width: 308.01.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  AppbarImage(
                                    imagePath: ImageConstant.imgRectangle94,
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
                                    margin: EdgeInsets.fromLTRB(
                                        11.h, 11.v, 239.h, 1.v),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              AppbarImage1(
                                imagePath: ImageConstant.imgImage14,
                                margin:
                                    EdgeInsets.fromLTRB(19.h, 22.v, 19.h, 11.v),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.v),
                          CustomIconButton(
                            height: 48.v,
                            width: 46.h,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.outlineBlackTL23,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgViajasmart202,
                            ),
                          ),
                          SizedBox(height: 5.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Viaja",
                                  style: theme.textTheme.labelLarge,
                                ),
                                TextSpan(
                                  text: "ndo",
                                  style: CustomTextStyles.bodySmallBlack900,
                                ),
                                TextSpan(
                                  text: "Smart",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 678.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage26,
                          height: 666.v,
                          width: 360.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgHome,
                          height: 53.v,
                          width: 58.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 31.h,
                            bottom: 48.v,
                          ),
                        ),
                      ],
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
}
