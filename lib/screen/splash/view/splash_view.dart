import 'package:flutter/material.dart';
import 'package:flutter_project/screen/auth/register/view/login_view.dart';
import 'package:flutter_project/screen/auth/register/view/register_view.dart';
import 'package:flutter_project/screen/splash/view/home_view.dart';
import 'package:flutter_project/screen/splash/view/info_view.dart';
import 'package:flutter_project/screen/splash/view/ticket_view.dart';
import 'package:flutter_project/screen/splash/view/booking_view.dart';
import 'package:flutter_project/screen/splash/view/user_view.dart';
import 'package:flutter_project/widgets/custom_button_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,  //center
        mainAxisAlignment: MainAxisAlignment.end, //bottom
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: Text(
              "Welcome to Flutter app",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          CustomButtonWedget(
            isLoading: isLoading,
            onTab: () {
              //Get.to("/login");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
            title: "Login",
            backgroundColor: Colors.blue,
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(vertical: 16),
          //   padding: EdgeInsets.symmetric(vertical: 15),
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.black54,
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //   ),
          //   child: Text(
          //     textAlign: TextAlign.center,
          //     "Login",
          //     style: TextStyle(fontSize: 30, color: Colors.white),
          //   ),
          // ),
          SizedBox(height: 20), //speace
          CustomButtonWedget(
            isLoading: true,
            onTab: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterView()));
            },
            title: "Register",
            backgroundColor: Colors.red,
          ),
          // CustomButtonWedget(
          //   isLoading: true,
          //   onTab: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
          //   },
          //   title: "Home",
          //   backgroundColor: Colors.blue,
          // ),
          // CustomButtonWedget(
          //   isLoading: true,
          //   onTab: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => BookingView()));
          //   },
          //   title: "Booking",
          //   backgroundColor: Colors.blue,
          // ),
          // CustomButtonWedget(
          //   isLoading: true,
          //   onTab: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => TicketView()));
          //   },
          //   title: "Ticket",
          //   backgroundColor: Colors.blue,
          // ),
          // CustomButtonWedget(
          //   isLoading: true,
          //   onTab: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => InfoView()));
          //   },
          //   title: "Info",
          //   backgroundColor: Colors.blue,
          // ),
          CustomButtonWedget(
            isLoading: true,
            onTab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserView()));
            },
            title: "users",
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
