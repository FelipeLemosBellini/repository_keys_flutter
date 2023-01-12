import 'dart:async';
import 'package:base_app/app/app_module.dart';
import 'package:base_app/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
