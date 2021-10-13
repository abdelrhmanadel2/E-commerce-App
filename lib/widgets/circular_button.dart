import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class circular_button extends StatelessWidget {
  final Icon icon;
  final bool hasShadow;

  final Function press;
  final Color backGroundColor;
  const circular_button({
    required this.icon,
    required this.press, this.backGroundColor = Colors.white, required this.hasShadow,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){press;},
      child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.09,

          decoration: BoxDecoration(
            color:backGroundColor,
            shape: BoxShape.circle,
              boxShadow: hasShadow
                  ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                )
              ]
                  : null
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child:icon)
      ),
    );
  }
}

