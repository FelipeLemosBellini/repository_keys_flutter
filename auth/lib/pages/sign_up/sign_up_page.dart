import 'package:assets/assets.dart';
import 'package:auth/stores/sign_up_store/sign_up_store.dart';
import 'package:auth/view_model/sign_up_view_model/sign_up_view_model.dart';
import 'package:commons/commons.dart';
import 'package:commons/widgets/safe_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final SignUpStore _store = Modular.get<SignUpStore>();

  @override
  Widget build(BuildContext context) {
    return SafeBuilder<SignUpStore, SignUpViewModel>(
        store: _store,
        builder: (context, triple) => Scaffold(
            appBar: SafeAppBarWidget(title: const Text(SafeStrings.signUp)),
            body: Column(children: [
              const Spacer(flex: 1),
              Padding(
                  padding: const EdgeInsets.only(left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                  child: Column(children: [
                    SafeInputTextWidget(
                        hintText: SafeStrings.name,
                        textInputType: TextInputType.visiblePassword,
                        controller: _store.state.nameController),
                    Padding(
                        padding: const EdgeInsets.only(top: SafeDimens.sixteen),
                        child: SafeInputTextWidget(
                            hintText: SafeStrings.email,
                            textInputType: TextInputType.emailAddress,
                            controller: _store.state.emailController)),
                    Padding(
                        padding: const EdgeInsets.only(top: SafeDimens.sixteen),
                        child: SafeInputTextWidget(
                            hintText: SafeStrings.password,
                            textInputType: TextInputType.visiblePassword,
                            controller: _store.state.passwordController))
                  ])),
              const Spacer(flex: 7),
              Padding(
                  padding: const EdgeInsets.only(
                      left: SafeDimens.twentyEight, right: SafeDimens.twentyEight, bottom: SafeDimens.eight),
                  child: Row(children: [
                    Checkbox(
                        checkColor: SafeColors.white,
                        activeColor: SafeColors.yellow,
                        value: _store.state.isChecked,
                        onChanged: (_) => _store.changeCheckBox(_store.state.isChecked)),
                    GestureDetector(
                        onTap: () => _store.changeCheckBox(_store.state.isChecked),
                        child: const Text(SafeStrings.privacyPolicies, style: TextStyle(color: SafeColors.white)))
                  ])),
              Padding(
                  padding: const EdgeInsets.only(
                      bottom: SafeDimens.forty, left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                  child: SafePrimaryButtonWidget(text: SafeStrings.createAccount, onTap: _store.signUp))
            ])));
  }
}
