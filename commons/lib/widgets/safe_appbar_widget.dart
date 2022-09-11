import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

class SafeAppBarWidget extends AppBar {
  final Widget title;
  final Color? color;
  final bool centerTitle;

  SafeAppBarWidget({
    Key? key,
    required this.title,
    this.color = SafeColors.darkBlue,
    this.centerTitle = true,
  }) : super(
          key: key,
          title: title,
          elevation: 0,
          backgroundColor: color,
          centerTitle: centerTitle,

  );
}
