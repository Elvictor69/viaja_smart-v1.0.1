import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';

// ignore: must_be_immutable
class Visitcathedral1ItemWidget extends StatelessWidget {
  Visitcathedral1ItemWidget({
    Key? key,
    this.onTapImgImageClass,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImageClass;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171.v,
      width: 321.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCatedral,
            height: 171.v,
            width: 321.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgImageClass?.call();
            },
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 15.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: AppDecoration.outlineBlack9001,
                    child: Text(
                      "Visita la Catedral de Leon",
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 1.h,
                      top: 25.v,
                    ),
                    decoration: AppDecoration.outlineWhiteA,
                    child: Text(
                      "Patrimonio de la Humanidad",
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 1.h),
                    decoration: AppDecoration.outlineBlack9005,
                    child: Text(
                      "¡Descubre la historia!",
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
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
