import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  List sizes = [
    {'no': 1, 'keyword': 'S'},
    {'no': 2, 'keyword': 'Lg'},
    {'no': 3, 'keyword': 'XL'}
  ];
  List color = [
    {'no': 1, 'keyword': 'blue'},
    {'no': 2, 'keyword': 'black'},
    {'no': 3, 'keyword': 'red'}
  ];
  var selectedColor;
  var selectedSize;
  void onChangeSize(size) {
    print(size);
    selectedSize = size;
    update();
  }

  void onChangeColor(color) {
    print(color);
    selectedColor = color;
    update();
  }
}
