import 'package:flutter_project/screen/auth/register/view/login_view.dart';
import 'package:flutter_project/screen/auth/register/view/register_view.dart';
import 'package:flutter_project/screen/splash/view/info_view.dart';
import 'package:flutter_project/screen/splash/view/booking_view.dart';
import 'package:flutter_project/screen/splash/view/splash_view.dart';
import 'package:flutter_project/screen/splash/view/user_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:flutter_project/screen/splash/view/home_view.dart';
import 'package:flutter_project/screen/splash/view/ticket_view.dart';

class Routes {
  final routes = [
    GetPage(name: RouteName.splash, page: () => SplashView()),
    GetPage(name: RouteName.register, page: () => RegisterView()),
    GetPage(name: RouteName.login, page: () => LoginView()),
    GetPage(name: RouteName.home, page: () => HomeView()),
    GetPage(name: RouteName.info, page: () => InfoView()),
    GetPage(name: RouteName.ticket, page: () => TicketView()),
    GetPage(name: RouteName.booking, page: () => BookingView()),
    GetPage(name: RouteName.users, page: () => UserView()),
  ];
}

class RouteName {
  static const String splash = "/splash";
  static const String register = "/register";
  static const String login = "/login";
  static const String home = "/home";
  static const String info = "/info";
  static const String ticket = "/ticket";
  static const String booking = "/booking";
  static const String users = "/users";
}
