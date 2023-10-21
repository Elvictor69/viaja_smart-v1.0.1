import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';

// ignore: must_be_immutable
class ProductrowItemWidget extends StatelessWidget {
  const ProductrowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineBlack9007.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 48.v,
              width: 114.h,
              margin: EdgeInsets.only(
                top: 12.v,
                bottom: 9.v,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
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
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: AppDecoration.outlineBlack9001,
                      child: Text(
                        "Comprar ahora",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 46.v),
              decoration: AppDecoration.outlineBlack9001,
              child: Text(
                "XXX",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
