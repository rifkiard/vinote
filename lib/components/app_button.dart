import "package:flutter/material.dart";
import 'package:vinote/constants.dart';

class AppButton extends StatelessWidget {
  final String text;
  final ThemeColors theme;
  final void Function()? onPressed;

  const AppButton(
      {Key? key,
      required this.text,
      this.theme = ThemeColors.primary,
      required this.onPressed})
      : super(key: key);

  Widget primaryButton() {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          child: Text(
            text,
            style: whiteTextStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w600),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return primaryButton();
  }
}
