import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      this.circle = false})
      : super(key: key);
  final double width;
  final double height;
  final icon;
  final text;
  final forground;
  final onPressed;
  final background;
  final bool circle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(width.r, height.r)),
          backgroundColor: MaterialStateProperty.all(background),
          foregroundColor: MaterialStateProperty.all(forground),
          shape:
              circle ? MaterialStateProperty.all(const CircleBorder()) : null),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon,
          if (text != null) ...[
            if (icon != null) SizedBox(width: 9.r),
            Text(
              text,
            )
          ]
        ],
      ),
    );
  }
}
