import 'package:flutter/material.dart';
import 'package:commons/commons.dart';
import 'package:assets/assets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:safe_zone/stores/home_safe_store.dart';
import 'package:safe_zone/view_model/home_safe_view_model.dart';
import 'package:safe_zone/widget/safe_float_action_button_add.dart';

class HomeSafePage extends StatefulWidget {
  const HomeSafePage({Key? key}) : super(key: key);

  @override
  State<HomeSafePage> createState() => _HomeSafePageState();
}

class _HomeSafePageState extends State<HomeSafePage> {
  final HomeSafeStore _store = Modular.get<HomeSafeStore>();

  @override
  Widget build(BuildContext context) {
    return SafeBuilder<HomeSafeStore, HomeSafeViewModel>(
        store: _store,
        context: context,
        builder: (context, triple) => Scaffold(
              appBar: SafeAppBarWidget(title: const Text(SafeStrings.safeSpace)),
              floatingActionButton: SafeFloatActionButtonAdd(onPressed: () {}),
              body: SingleChildScrollView(physics: const AlwaysScrollableScrollPhysics(), child: Column(children: [])),
            ));
  }
}
