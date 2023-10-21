// Importación de paquetes y archivos necesarios
import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';
import 'package:viaja_smart/widgets/custom_icon_button.dart';
import '../descubre_page/widgets/visitcathedral_item_widget.dart';

// Definición de la clase DescubrePage
class DescubrePage extends StatelessWidget {
  const DescubrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          // Barra de navegación personalizada
          title: SizedBox(
            height: 79.v,
            width: 307.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.imgRectangle9),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      AppbarSubtitle(
                        text: "Discovery, Travel and Eat",
                        margin: EdgeInsets.only(left: 44.h, top: 38.v),
                      ),
                    ],
                  ),
                ),
                AppbarImage(
                  imagePath: ImageConstant.imgViajasmart2mesa,
                  margin: EdgeInsets.fromLTRB(10.h, 20.v, 200.h, 9.v),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              imagePath: ImageConstant.imgImage14,
              margin: EdgeInsets.fromLTRB(21.h, 23.v, 15.h, 20.v),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.h, top: 5.v, right: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      width: 146.h,
                      text: "Filtros",
                      rightIcon: Container(
                        margin: EdgeInsets.only(left: 4.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage16,
                          height: 29.v,
                          width: 25.h,
                        ),
                      ),
                      buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
                      onTap: () {
                        onTapFiltros(context);
                      },
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgViajasmart202,
                      height: 34.v,
                      width: 32.h,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 16.h, top: 8.v, right: 20.h, bottom: 2.v),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 19.v);
                      },
                      itemCount:
                          5, // esto es para el numero de vistas o entradas a negocios,viajes o lo que sea
                      itemBuilder: (context, index) {
                        return VisitcathedralItemWidget(
                          onTapImgImageClass: () {
                            onTapImgImageClass(context);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgHome, // Icono de home
                      height: 53.v,
                      width: 58.h,
                      margin: EdgeInsets.only(bottom: 47.v),
                    ),
                    CustomIconButton(
                      height: 45.v,
                      width: 44.h, // Botones ubicados arriba
                      margin:
                          EdgeInsets.only(left: 23.h, top: 5.v, bottom: 50),
                      padding: EdgeInsets.all(5.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Navegación al tocar la imagen
  onTapImgImageClass(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubreCatedralScreen);
  }

  // Navegación al tocar el botón "Filtros"
  onTapFiltros(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubre11Screen);
  }
}
