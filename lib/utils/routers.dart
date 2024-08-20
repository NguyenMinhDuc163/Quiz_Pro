
import 'package:flutter/material.dart';
import 'package:quiz_pro/utils/router_names.dart';
import 'package:quiz_pro/view/friends/friend_screen.dart';
import 'package:quiz_pro/view/home/home_screen.dart';
import 'package:quiz_pro/view/leaderBoard/leader_board.dart';
import 'package:quiz_pro/view/main_app.dart';
import 'package:quiz_pro/view/quizzes/quizzes_screen.dart';
import 'package:quiz_pro/view/userAuth/eden_sign_up_screen.dart';
import 'package:quiz_pro/view/userAuth/forgot_password_screen.dart';
import 'package:quiz_pro/view/userAuth/intro_screen.dart';
import 'package:quiz_pro/view/userAuth/login_screen.dart';
import 'package:quiz_pro/view/userAuth/sign_up_screen.dart';
import 'package:quiz_pro/view/userAuth/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  // noi tong hop ca routes
  RouteNames.introScreen: (context) => const IntroScreen(),
  RouteNames.splashScreen: (context) => const SplashScreen(),
  RouteNames.loginScreen: (context) => const LoginScreen(),
  RouteNames.signUpScreen: (context) => const SignUpScreen(),
  RouteNames.forgotPasswordScreen: (context) => const ForgotPasswordScreen(),
  RouteNames.homeScreen: (context) => const HomeScreen(),
  RouteNames.friendScreen: (context) => const FriendScreen(),
  RouteNames.leaderBoardScreen: (context) => const LeaderBoard(),
  RouteNames.quizzesScreen: (context) => const QuizzesScreen(),
  RouteNames.mainApp: (context) => const MainApp(),
  RouteNames.edenSignUpView: (context) => const EdenSignUpView(),



};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  // switch (settings.name) {
  //   case RouteNames.hotelDetailScreen:
  //     final HotelModel hotelModel = (settings.arguments as HotelModel);
  //     return MaterialPageRoute<dynamic>(
  //       settings: settings,
  //       builder: (context) => HotelDetailScreen(
  //         hotelModel: hotelModel,
  //       ),
  //     );
  //
  //   case RouteNames.checkOutScreen:
  //     final RoomModel roomModel = (settings.arguments as RoomModel);
  //     return MaterialPageRoute<dynamic>(
  //       settings: settings,
  //       builder: (context) => CheckOutScreen(
  //         roomModel: roomModel,
  //       ),
  //     );
  //
  //   case RouteNames.hotelBookingScreen:
  //     return MaterialPageRoute<dynamic>(builder: (context) {
  //       final String? nameDestination = (settings.arguments as String?);
  //       return HotelBookingScreen(
  //         nameDestination: nameDestination,
  //       );
  //     });
  // }
}
