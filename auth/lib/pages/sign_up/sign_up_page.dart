import 'package:assets/assets.dart';
import 'package:auth/stores/sign_up_store/sign_up_store.dart';
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
    return SafeBuilder(
        store: _store,
        builder: (context, triple) => Scaffold(
            appBar: SafeAppBarWidget(title: const Text(SafeStrings.signUp)),
            body: Container(color: SafeColors.darkBlue)));
  }
}
