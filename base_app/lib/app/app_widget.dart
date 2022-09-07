import 'package:commons/helper/safe_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(SafeRoutes.welcome);
    return MaterialApp.router(
        routerDelegate: Modular.routerDelegate,
        debugShowCheckedModeBanner: false,
        routeInformationParser: Modular.routeInformationParser);
  }
}
