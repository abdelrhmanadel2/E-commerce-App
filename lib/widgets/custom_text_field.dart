import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final  controller;
  const CustomTextFeild({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.button,
      scrollPadding: EdgeInsets.all(0),
      controller: controller,
      
    );
  }
}
