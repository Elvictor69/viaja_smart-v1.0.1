import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';

// ignore: must_be_immutable
class VisitcathedralItemWidget extends StatelessWidget {
  VisitcathedralItemWidget({
    Key? key,
    this.onTapImgImageClass,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImageClass;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Envuelve el contenido en un SingleChildScrollView para permitir el desplazamiento
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
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
                    left: 17.h,
                    top: 18.v,
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
                      SizedBox(height: 22.v),
                      Container(
                        decoration: AppDecoration.outlineWhiteA,
                        child: Text(
                          "Patrimonio de la Humanidad",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      Container(
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
        ),
      ),
    );
  }
}
