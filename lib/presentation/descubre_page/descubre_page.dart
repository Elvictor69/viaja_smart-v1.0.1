import 'package:flutter/material.dart';
import 'package:viaja_smart/core/app_export.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_image_1.dart';
import 'package:viaja_smart/widgets/app_bar/appbar_subtitle.dart';
import 'package:viaja_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:viaja_smart/widgets/custom_elevated_button.dart';
import 'package:viaja_smart/widgets/custom_icon_button.dart';
import '../descubre_page/widgets/visitcathedral_item_widget.dart';

class DescubrePage extends StatefulWidget {
  const DescubrePage({Key? key}) : super(key: key);

  @override
  _DescubrePageState createState() => _DescubrePageState();
}

class _DescubrePageState extends State<DescubrePage> {
  bool darkMode = false;

  void toggleDarkMode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: CustomAppBar(
        
        title: SizedBox(
          height: 79,
          width: 307,
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
                    // Subtítulo de la barra de navegación
                    AppbarSubtitle(
                      text: "Discovery, Travel and Eat",
                      margin: EdgeInsets.only(left: 44, top: 38),
                    ),
                  ],
                ),
              ),
              // Imagen en la barra de navegación
              AppbarImage(
                imagePath: ImageConstant.imgViajasmart2mesa,
                margin: EdgeInsets.fromLTRB(10, 20, 200, 9),
              ),
              // Botón para cambiar el modo claro/oscuro
              Positioned(
                top: 30,
                right: 10,
                child: IconButton(
                  onPressed: toggleDarkMode,
                  icon: Icon(
                    darkMode ? Icons.wb_sunny : Icons.nightlight_round,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          // Imagen en la barra de navegación
          AppbarImage1(
            imagePath: ImageConstant.imgImage14,
            margin: EdgeInsets.fromLTRB(21, 23, 15, 20),
          ),
        ],
      ),
      body: Container(
        color: darkMode ? Color.fromARGB(255, 0, 0, 0) : Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18, top: 5, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Botón de "Filtros" con icono a la derecha
                  ElevatedButton(
                    onPressed: () {
                      onTapFiltros(context);
                    },
                    child: Text("Filtros"),
                  ),
                  // Otra imagen
                  GestureDetector(
                    onTap: () {
                        // Implementa la navegación a la otra vista aquí, por ejemplo:
                          onTabMapa(context);
                      },
                    child: CustomImageView(
                    imagePath: ImageConstant.imgViajasmart202,
                    height: 34,
                    width: 32,
                    ),
                  )

                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 8,
                    right: 20,
                    bottom: 2,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 19);
                    },
                    itemCount: 5,
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
          ],
        ),
      ),
      //
    );
  }

  // Navegación al tocar la imagen
  void onTapImgImageClass(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubreCatedralScreen);
  }

  // Navegación al tocar el botón "Filtros"
  void onTapFiltros(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.descubre11Screen);
  }

  //navegacíon hacia la vista de mapas 
  void onTabMapa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mapaPage);
  }
}

void main() {
  runApp(MaterialApp(
    home: DescubrePage(),
  ));
}
