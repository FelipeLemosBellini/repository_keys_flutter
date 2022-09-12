import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

extension TypographyExtension on Text {
  Text title({TextStyle? textStyle}) {
    return Text(data!,
        style: const TextStyle(
            shadows: <Shadow>[Shadow(offset: Offset(1.0, 1.0), blurRadius: 3.0, color: SafeColors.black)],
            fontWeight: FontWeight.bold,
            color: SafeColors.yellow,
            fontSize: SafeDimens.twentyEight),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text smallText({TextStyle? textStyle}) {
    return Text(data!,
        style: TextStyle(
          color: SafeColors.white.withOpacity(0.7),
          fontSize: SafeDimens.sixteen,
        ),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }
}
