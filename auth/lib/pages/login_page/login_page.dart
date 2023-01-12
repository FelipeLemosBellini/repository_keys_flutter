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
            body: Column(children: [
              const Spacer(flex: 1),
              Padding(
              padding: const EdgeInsets.only(left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
              child: Column(children: [
                SafeInputTextWidget(
                    hintText: SafeStrings.email,
                    textInputType: TextInputType.emailAddress,
                    controller: _store.state.emailController),
                Padding(
                    padding: const EdgeInsets.only(top: SafeDimens.sixteen),
                    child: SafeInputTextWidget(
                        hintText: SafeStrings.password,
                        textInputType: TextInputType.visiblePassword,
                        controller: _store.state.passwordController)),
                Padding(
                    padding: const EdgeInsets.only(top: SafeDimens.ten, right: SafeDimens.eight),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: _store.forgotPassword,
                            child: const Text(SafeStrings.forgotPassword).smallText())))
              ])),
              const Spacer(flex: 7),
              Padding(
              padding: const EdgeInsets.only(
                  bottom: SafeDimens.forty, left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
              child: SafePrimaryButtonWidget(text: SafeStrings.confirm, onTap: _store.sign))
            ])));
  }
}
