import "package:flutter/material.dart";
import 'package:ecommerce_app/utils/colors.dart';

class RoundedCornerButton extends StatelessWidget {
  RoundedCornerButton({
    Key? key,
     this.title = "",
    required this.onPressed,
    this.backgroundColor = kPrimaryColor,
    this.textColor = Colors.white,
    this.hasShadow = false,
    this.hasBorder = false,
    this.icon = null,
    this.width,
    this.widthOfText,
    this.heightOfText,
    this.height,
    this.textStyle, required this.borderRadius,
  }) : super(key: key);
  final widthOfText;
  final heightOfText;
  final String title;
  final VoidCallback? onPressed;
  final bool hasShadow;
  final backgroundColor;
  final textColor;
  final icon;
  final bool hasBorder;
  final width;
  final height;
  final TextStyle? textStyle;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: hasBorder?Colors.transparent:backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: hasBorder
              ? Border.all(width: 1, color: kPrimaryColor)
              : Border.all(width: 0, color: Colors.transparent),
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  )
                ]
              : null),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ))),
        child: icon != null
            ? Container(
                width: widthOfText,
                height: heightOfText,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon,
                    title == ""?Text("$title",
                        textAlign: TextAlign.center,
                        style: textStyle ??
                            TextStyle(
                                color: textColor,
                                fontFamily: "DIN",
                                fontWeight: FontWeight.bold,
                                fontSize: 13)):SizedBox(),
                  ],
                ),
              )
            : Text(
                "$title",
                textAlign: TextAlign.center,
                style: textStyle,
              ),
      ),
    );
  }
}
