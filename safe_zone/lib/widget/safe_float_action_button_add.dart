import 'package:commons/commons.dart';
import 'package:flutter/material.dart';
import 'package:assets/assets.dart';

class SafeFloatActionButtonAdd extends FloatingActionButton {
  const SafeFloatActionButtonAdd({Key? key, required VoidCallback? onPressed})
      : super(
            key: key,
            onPressed: onPressed,
            backgroundColor: SafeColors.yellow,
            child: const Icon(Icons.add, color: SafeColors.black));
}
