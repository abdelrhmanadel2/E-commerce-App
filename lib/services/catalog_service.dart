import 'dart:developer';

import 'package:ecommerce_app/models/sale_product_model.dart';
import 'package:ecommerce_app/utils/services/api_service.dart';
import 'package:ecommerce_app/utils/services/services.dart';

// ignore: avoid_classes_with_only_static_members
class CatalogService {
  static ApiService api = ApiService();

  static Future<List<SaleProductModel>?> getCategories(
      {mainCategory, subCategory}) async {
    var queryParameters = {
      "secret": "01017018407",
      "mainCategory": mainCategory
    };
    if (subCategory != null) {
      queryParameters.addAll({"subCategory": subCategory});
    }
    final data = await api.request(Services.getProductList, "GET",
        queryParamters: queryParameters);
    if (data != null) {
      List<SaleProductModel> categories = [];

      print(data.length);
      data.forEach((element) {
        categories.add(SaleProductModel.fromJson(element));
      });
      return categories;
    }
    return null;
  }
}
