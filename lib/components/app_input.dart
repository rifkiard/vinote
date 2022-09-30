import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:vinote/constants.dart';

class AppInput extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final bool autofocus;
  final Function(String?)? onSaved;
  final Function(String?)? onFieldSubmitted;
  final TextInputType keyboardType;
  final bool isObscureText;
  final bool isPasswordField;
  final bool readonly;

  const AppInput(
      {Key? key,
      this.controller,
      this.hintText,
      this.labelText,
      this.onSaved,
      this.onFieldSubmitted,
      this.autofocus = false,
      this.keyboardType = TextInputType.text,
      this.isObscureText = false,
      this.isPasswordField = false,
      this.readonly = false})
      : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool _isObsecure = true;

  List<Widget> _labelWidget() {
    return widget.labelText != null
        ? [
            Text(
              widget.labelText ?? '',
              style: blackTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
          ]
        : [];
  }

  OutlineInputBorder _normalBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: gray200Color,
      ),
    );
  }

  OutlineInputBorder _focusBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ..._labelWidget(),
        TextFormField(
          cursorColor: primaryColor,
          enabled: !widget.readonly,
          controller: widget.controller,
          autofocus: widget.autofocus,
          style: widget.readonly
              ? mutedTextStyle.copyWith(fontSize: 16)
              : blackTextStyle.copyWith(fontSize: 16),
          keyboardType: widget.isPasswordField
              ? TextInputType.visiblePassword
              : widget.keyboardType,
          onSaved: widget.onSaved,
          onFieldSubmitted: widget.onFieldSubmitted,
          obscureText: widget.isPasswordField
              ? (_isObsecure == true)
              : widget.isObscureText == true,
          decoration: InputDecoration(
            hintStyle: mutedTextStyle.copyWith(fontSize: 16),
            hintText: widget.hintText,
            border: _normalBorder(),
            focusedBorder: _focusBorder(),
            enabledBorder: _normalBorder(),
            errorBorder: _normalBorder(),
            disabledBorder: _normalBorder(),
            filled: true,
            fillColor: widget.readonly ? whiteColor : gray100Color,
            contentPadding: const EdgeInsets.symmetric(horizontal: 14),
          ),
        ),
      ],
    );
  }
}
