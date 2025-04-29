import 'package:fingerprint/Routes/Routesname.dart';
import 'package:fingerprint/view_/auth_view.dart';
import 'package:fingerprint/view_/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings set) {
    switch (set.name) {
      case Routesname.home:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => HomeView(),
          );
        }

      case Routesname.authView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => authview(),
          );
        }

      default:
      {
        return MaterialPageRoute(
          builder: (BuildContext context) => const Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          ),
        );
      }
    }
  }
}
