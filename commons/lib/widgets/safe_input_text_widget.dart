import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

class SafeInputTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType textInputType;
  final String hintText;

  const SafeInputTextWidget(
      {required this.textInputType, required this.hintText, required this.controller, this.focusNode, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: SafeDimens.fortyEight,
        decoration: BoxDecoration(
            border: Border.all(width: SafeDimens.one, color: SafeColors.white.withOpacity(SafeDimens.zeroDotEight)),
            borderRadius: BorderRadius.circular(SafeDimens.ten)),
        child: Padding(
            padding: const EdgeInsets.only(left: SafeDimens.eight, right: SafeDimens.eight),
            child: TextField(
                controller: controller,
                textAlign: TextAlign.left,
                cursorColor: SafeColors.yellow,
                focusNode: focusNode,
                showCursor: true,
                maxLines: 1,
                style: const TextStyle(color: SafeColors.white),
                keyboardType: textInputType,
                decoration: _inputDecoration())));
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
        hintText: hintText,
        hintStyle: _hintTextStyle(),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none);
  }

  TextStyle _hintTextStyle() {
    return TextStyle(color: SafeColors.white.withOpacity(SafeDimens.zeroDotFive));
  }
}
