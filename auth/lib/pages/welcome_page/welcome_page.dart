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
  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(color: SafeColors.red));
  }
}
