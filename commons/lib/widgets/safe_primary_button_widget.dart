import 'package:commons/commons.dart';
import 'package:commons/helper/safe_colors.dart';
import 'package:flutter/material.dart';

class SafePrimaryButtonWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  final double? height;
  final double? width;

  SafePrimaryButtonWidget({required this.text, required this.onTap, this.height, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap(),
        child: Container(
            width: double.maxFinite,
            height: height ?? SafeDimens.forty,
            decoration: BoxDecoration(color: SafeColors.yellow, borderRadius: BorderRadius.circular(SafeDimens.ten)),
            child: Center(child: Text(text, style: const TextStyle(fontWeight: FontWeight.w700)))));
  }
}
