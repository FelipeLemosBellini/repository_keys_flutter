import 'package:assets/assets.dart';
import 'package:auth/stores/login_store/login_store.dart';
import 'package:auth/view_model/login_view_model/login_view_model.dart';
import 'package:commons/commons.dart';
import 'package:commons/widgets/safe_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginStore _store = Modular.get<LoginStore>();

  @override
  Widget build(BuildContext context) {
    return SafeBuilder<LoginStore, LoginViewModel>(
        store: _store,
        context: context,
        builder: (context, triple) => Scaffold(
            appBar: SafeAppBarWidget(title: const Text(SafeStrings.login)),
            body: Container(
                color: SafeColors.darkBlue,
                child: Column(children: [
                  const Spacer(flex: 2),
                  const Text(SafeStrings.login,
                      style: TextStyle(
                          color: SafeColors.white, fontWeight: FontWeight.w600, fontSize: SafeDimens.twentyEight)),
                  const Spacer(flex: 2),
                  Padding(
                      padding: const EdgeInsets.only(left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                      child: SafePrimaryButtonWidget(text: SafeStrings.confirm, onTap: () {})),
                  const Spacer(flex: 1)
                ]))));
  }
}
