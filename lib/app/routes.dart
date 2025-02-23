import 'package:flutter_project/screen/auth/register/view/login_view.dart';
import 'package:flutter_project/screen/auth/register/view/register_view.dart';
import 'package:flutter_project/screen/splash/view/splash_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  final routes = [
    GetPage(name: RouteName.splash, page: () => SplashView()),
    GetPage(name: RouteName.register, page: () => RegisterView()),
    GetPage(name: RouteName.login, page: () => LoginView())
  ];
}

class RouteName {
  static const String splash = "/splash";
  static const String register = "/register";
  static const String login = "/login";
}
