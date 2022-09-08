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
  final WelcomeStore _store = Modular.get<WelcomeStore>();
  List<Color> colors = [
    SafeColors.darkBlue,
    SafeColors.bluishGray,
    SafeColors.tin,
  ];

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return SafeBuilder<WelcomeStore, WelcomeViewModel>(
        store: _store,
        context: context,
        builder: (context, triple) => Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: colors)),
                child: Column(children: [
                  const Spacer(flex: 2),
                  Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          image: DecorationImage(
                              image: AssetImage(SafeImages.lock_pick.png, package: SafeImages.lock_pick.package)))),
                  const Spacer(flex: 4),
                  Padding(
                      padding: const EdgeInsets.only(left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                      child: SafePrimaryButtonWidget(text: 'Login', onTap: _store.goToLoginPage)),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: SafeDimens.sixteen, left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                      child: SafeSecondaryButtonWidget(onTap: () {}, text: 'Sign Up')),
                  const Spacer(flex: 1)
                ]))));
  }
}
