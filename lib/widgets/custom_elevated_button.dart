import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.width,
      required this.height,
      this.icon,
      this.background,
      this.forground,
      this.text,
      this.onPressed,
      this.circle = false, this.hasTextStyle=false, this.textStyle = null, this.elivation=0})
      : super(key: key);
  final double width;
  final double elivation;
  final textStyle;
  final double height;
  final icon;
  final text;
  final hasTextStyle;
  final forground;
  final onPressed;
  final background;
  final bool circle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ButtonStyle(
          splashFactory: InkSplash.splashFactory,
          fixedSize: MaterialStateProperty.all(Size(width.w, height.h)),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.red;
            }
            return background;
          }),
           foregroundColor: MaterialStateProperty.all(forground),
          elevation: MaterialStateProperty.all(elivation),
          shape:
              circle ? MaterialStateProperty.all(const CircleBorder()) : null),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon,
          if (text != null) ...[
            if (icon != null) SizedBox(width: 9.r),
            if (hasTextStyle) Text(
              text,
              style: textStyle,
            ) else Text(
              text,
            ),
          ]
        ],
      ),
    );
  }
}
