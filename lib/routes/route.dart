import 'package:amazon/features/auth/screens/login_screen.dart';
import 'package:amazon/features/auth/screens/register_screen.dart';
import 'package:amazon/features/home/home.dart';
import 'package:amazon/features/notFound/not_found.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomePage.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => (const HomePage()));

    case RegisterScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => (const RegisterScreen()));

    case LoginScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => (const LoginScreen()));

    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => (const PageNotFound()));
  }
}
