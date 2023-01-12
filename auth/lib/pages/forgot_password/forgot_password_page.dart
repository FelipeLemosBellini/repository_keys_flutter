import 'package:assets/assets.dart';
import 'package:auth/stores/forgot_password_store/forgot_password_store.dart';
import 'package:auth/view_model/forgot_password_view_model/forgot_password_view_model.dart';
import 'package:flutter/material.dart';
import 'package:commons/commons.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final ForgotPasswordStore _store = Modular.get<ForgotPasswordStore>();

  @override
  Widget build(BuildContext context) {
    return SafeBuilder<ForgotPasswordStore, ForgotPasswordViewModel>(
        store: _store,
        context: context,
        builder: (context, triple) => Scaffold(
            appBar: SafeAppBarWidget(title: const Text(SafeStrings.retrieveAccount)),
            body: Column(children: [
              const Spacer(flex: 1),
              Padding(
                  padding: const EdgeInsets.only(left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                  child: SafeInputTextWidget(
                      hintText: SafeStrings.email,
                      textInputType: TextInputType.emailAddress,
                      controller: _store.state.emailController)),
              Padding(
                  padding: const EdgeInsets.only(
                      left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo, top: SafeDimens.twentyEight),
                  child: Text(SafeStrings.infoTextRetrieveAccount,
                      style: TextStyle(color: SafeColors.white.withOpacity(0.4)))),
              const Spacer(flex: 7),
              Padding(
                  padding: const EdgeInsets.only(
                      bottom: SafeDimens.forty, left: SafeDimens.thirtyTwo, right: SafeDimens.thirtyTwo),
                  child: SafePrimaryButtonWidget(text: SafeStrings.send, onTap: _store.sendEmail))
            ])));
  }
}
