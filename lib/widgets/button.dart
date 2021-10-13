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
    required this.borderRadius,
    this.width=0.0 ,
    this.widthOfText=0.0,
    this.heightOfText=0.0,
    this.height=0.0,
    this.textStyle,
  }) : super(key: key);
  final double widthOfText;
  final double heightOfText;
  final String title;
  final VoidCallback? onPressed;
  final bool hasShadow;
  final Color backgroundColor;
  final Color textColor;
  final icon;
  final bool hasBorder;
  final double width;
  final double height;
  final TextStyle? textStyle;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width ,
      height: height,
      decoration: BoxDecoration(
          color: hasBorder?theme.backgroundColor:backgroundColor,
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
            ? title == ""?Center(
          child: icon,
        ) :Container(
                width: widthOfText,
                height: heightOfText,
                child: Row(
                  children: [
                    icon,
                    Text("$title",
                        textAlign: TextAlign.center,
                        style: textStyle ??
                            TextStyle(
                                color: textColor,
                                fontFamily: "DIN",
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
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
