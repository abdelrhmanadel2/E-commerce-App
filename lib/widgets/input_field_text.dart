import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputfield extends StatelessWidget {
  CustomInputfield(
      {Key? key,
      this.labelText,
      this.icon,
      this.onchange,
      this.controller,
      this.keyboardType,
      this.validator,
      this.isAutoValidate = true,
      this.onFieldSubmitted,
      this.onSaved,
      this.validated,
      this.obsecure = false})
      : super(key: key);
  final labelText;
  final icon;
  var validated;
  final onchange;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final bool isAutoValidate;
  final TextInputType? keyboardType;
  final bool obsecure;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      cursorColor: theme.colorScheme.onSurface,
      obscureText: obsecure,
      decoration: InputDecoration(
        fillColor: theme.colorScheme.surface,
        filled: true,
        labelText: labelText,
        labelStyle: theme.textTheme.caption!.apply(color: theme.hintColor),
        suffixIcon: icon,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4.r)),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4.r)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(4.r)),
      ),
      onChanged: onchange,
      controller: controller,
      validator: validator,
      autovalidateMode: isAutoValidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
