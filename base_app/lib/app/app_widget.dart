import 'package:commons/helper/safe_colors.dart';
import 'package:commons/helper/safe_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            initialRoute: SafeRoutes.homeSafe,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                highlightColor: Colors.transparent,
                bottomSheetTheme: const BottomSheetThemeData(backgroundColor: SafeColors.darkBlue),
                scaffoldBackgroundColor: SafeColors.darkBlue,
                splashColor: SafeColors.transparent,
                hoverColor: SafeColors.transparent,
                splashFactory: NoSplash.splashFactory,
                brightness: Brightness.dark,
                colorScheme: const ColorScheme.dark(secondary: SafeColors.tin),
                textSelectionTheme: TextSelectionThemeData(
                    cursorColor: SafeColors.tin,
                    selectionColor: SafeColors.tin.withOpacity(0.5),
                    selectionHandleColor: SafeColors.tin)))
        .modular();
  }
}
