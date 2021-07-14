import 'package:flutter/material.dart';

import 'package:european_countires/ui/screens/home_screen/home_screen.dart';
import 'package:european_countires/ui/screens/map_screen.dart';
import 'package:european_countires/ui/screens/splash_screen.dart';


class AppRouter{

  Route? generateRoute(RouteSettings settings){

    switch(settings.name){

      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case "/Home":
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case "/Map":
        return MaterialPageRoute(builder: (_) => MapScreen());
      default:
        return null;
    }
  }

}