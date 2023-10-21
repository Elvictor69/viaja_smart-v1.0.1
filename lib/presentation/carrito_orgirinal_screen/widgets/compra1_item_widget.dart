import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';

// ignore: must_be_immutable
class Compra1ItemWidget extends StatelessWidget {
  const Compra1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineBlack9007.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 83.v,
                    width: 185.h,
                    margin: EdgeInsets.only(top: 11.v),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 1.h),
                            decoration: AppDecoration.outlineBlack9001,
                            child: Text(
                              "xxxxx name",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 20.v),
                            decoration: AppDecoration.outlineBlack9001,
                            child: Text(
                              "Comprar ahora",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 21.v),
                            decoration: AppDecoration.outlineBlack9001,
                            child: Text(
                              "Eliminar",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 20.v,
                              right: 61.h,
                            ),
                            decoration: AppDecoration.outlineBlack9001,
                            child: Text(
                              "/",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 36.v,
                            width: 40.h,
                            margin: EdgeInsets.only(
                              left: 12.h,
                              bottom: 5.v,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 30.v,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray500,
                                      borderRadius: BorderRadius.circular(
                                        15.h,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.25),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(
                                            0,
                                            4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 5.h),
                                    decoration: AppDecoration.outlineBlack9001,
                                    child: Text(
                                      "+",
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 36.v,
                            width: 40.h,
                            margin: EdgeInsets.only(
                              right: 40.h,
                              bottom: 5.v,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 30.v,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray500,
                                      borderRadius: BorderRadius.circular(
                                        15.h,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.25),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(
                                            0,
                                            4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    decoration: AppDecoration.outlineBlack9001,
                                    child: Text(
                                      "-",
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 35.v,
                            width: 40.h,
                            margin: EdgeInsets.only(left: 58.h),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 30.v,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray500,
                                      borderRadius: BorderRadius.circular(
                                        15.h,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.25),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(
                                            0,
                                            4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: AppDecoration.outlineBlack9001,
                                    child: Text(
                                      "X",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 7.h,
                      top: 49.v,
                      bottom: 22.v,
                    ),
                    decoration: AppDecoration.outlineBlack9001,
                    child: Text(
                      "XXX",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 88.v,
              width: 95.h,
              margin: EdgeInsets.only(left: 16.h),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900.withOpacity(0.25),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: AppDecoration.outlineBlack9001,
                      child: Text(
                        "X",
                        style: CustomTextStyles.interWhiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
