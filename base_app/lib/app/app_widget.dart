import 'package:commons/helper/safe_colors.dart';
import 'package:commons/helper/safe_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: SafeRoutes.welcome,
      debugShowCheckedModeBanner: false,
    ).modular();
  }
}
