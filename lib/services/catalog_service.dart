import 'dart:developer';

import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/utils/services/api_service.dart';
import 'package:ecommerce_app/utils/services/services.dart';

// ignore: avoid_classes_with_only_static_members
class CatalogService {
  static ApiService api = ApiService();

  static Future<List<ProductModel>?> getCategories(
      {maincategory, subCategory}) async {
    var queryParameters = {
      "Secret": "01017018407",
      "mainCategory": maincategory
    };
    if (subCategory != null) {
      queryParameters.addAll({"subCategory": subCategory});
    }
    final data = await api.request(Services.getProductList, "GET",
        queryParamters: queryParameters);
    if (data != null) {
      List<ProductModel> categories = [];

      print(data.length);
      data.forEach((element) {
        categories.add(ProductModel.fromJson(element));
      });
      return categories;
    }
    return null;
  }
}
