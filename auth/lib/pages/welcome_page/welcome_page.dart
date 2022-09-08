import 'package:auth/stores/welcome_store/welcome_store.dart';
import 'package:auth/view_model/welcome_view_model/welcome_view_model.dart';
import 'package:commons/widgets/safe_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/commons.dart';
import 'package:assets/assets.dart';
import 'package:assets/assets/safe_images.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<Color> colors = [
    SafeColors.darkBlue,
    SafeColors.bluishGray,
    SafeColors.tin,
  ];

  @override
  Widget build(BuildContext context) {
    final WelcomeStore _store = Modular.get<WelcomeStore>();
    return SafeBuilder<WelcomeStore, WelcomeViewModel>(
        store: _store,
        builder: (context, triple) => Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: colors)),
                child: Column(children: [
                  Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(SafeImages.ic_gallery.png, package: SafeImages.ic_gallery.package)))),
                  Center(child: Image.asset(SafeImages.app.png, width: 100, height: 100)),
                  const Spacer(flex: 7),
                  Padding(
                      padding: const EdgeInsets.only(left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                      child: SafePrimaryButtonWidget(text: 'Login', onTap: () {})),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: SafeDimens.sixteen, left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                      child: SafeSecondaryButtonWidget(onTap: () {}, text: 'Sign Up')),
                  const Spacer(flex: 1)
                ]))));
  }
}
