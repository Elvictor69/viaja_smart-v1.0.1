import 'package:flutter/material.dart';
import 'package:viaja_smart/presentation/registrate_screen/registrate_screen.dart';
import 'package:viaja_smart/presentation/login_screen/login_screen.dart';
import 'package:viaja_smart/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:viaja_smart/presentation/descubre_container_screen/descubre_container_screen.dart';
import 'package:viaja_smart/presentation/descubre_1_1_screen/descubre_1_1_screen.dart';
import 'package:viaja_smart/presentation/descubre_1_2_screen/descubre_1_2_screen.dart';
import 'package:viaja_smart/presentation/descubre_catedral_screen/descubre_catedral_screen.dart';
import 'package:viaja_smart/presentation/descubre_2_tranporte_screen/descubre_2_tranporte_screen.dart';
import 'package:viaja_smart/presentation/carrito_orgirinal_screen/carrito_orgirinal_screen.dart';
import 'package:viaja_smart/presentation/carrito_orgirinal_two_screen/carrito_orgirinal_two_screen.dart';
import 'package:viaja_smart/presentation/perfil_de_usuario_screen/perfil_de_usuario_screen.dart';
import 'package:viaja_smart/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registrateScreen = '/registrate_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String descubrePage = '/descubre_page';

  static const String descubreContainerScreen = '/descubre_container_screen';

  static const String descubre11Screen = '/descubre_1_1_screen';

  static const String descubre12Screen = '/descubre_1_2_screen';

  static const String descubreCatedralScreen = '/descubre_catedral_screen';

  static const String descubre2TranporteScreen = '/descubre_2_tranporte_screen';

  static const String carritoOrgirinalScreen = '/carrito_orgirinal_screen';

  static const String carritoOrgirinalTwoScreen =
      '/carrito_orgirinal_two_screen';

  static const String perfilDeUsuarioScreen = '/perfil_de_usuario_screen';

  static const String mapaPage = '/mapa_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registrateScreen: (context) => RegistrateScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    descubreContainerScreen: (context) => DescubreContainerScreen(),
    descubre11Screen: (context) => Descubre11Screen(),
    descubre12Screen: (context) => Descubre12Screen(),
    descubreCatedralScreen: (context) => DescubreCatedralScreen(),
    descubre2TranporteScreen: (context) => Descubre2TranporteScreen(),
    carritoOrgirinalScreen: (context) => CarritoOrgirinalScreen(),
    carritoOrgirinalTwoScreen: (context) => CarritoOrgirinalTwoScreen(),
    perfilDeUsuarioScreen: (context) => PerfilDeUsuarioScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
