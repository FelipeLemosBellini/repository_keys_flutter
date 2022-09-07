import 'package:auth/stores/welcome_store/welcome_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/assets/safe_colors.dart';

class WelcomePage extends StatefulWidget {
  final WelcomeStore _store = Modular.get<WelcomeStore>();

  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<Color> colors = [SafeColors.bluishGray, SafeColors.tin, SafeColors.darkBlue];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: colors)),
        child: Scaffold(
            appBar: AppBar(),
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: colors)),
                child: const Center(child: Text("buttn")))));
  }
}
