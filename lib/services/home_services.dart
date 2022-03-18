import 'package:ecommerce_app/models/sale_product_model.dart';
import 'package:ecommerce_app/utils/services/api_service.dart';
import 'package:ecommerce_app/utils/services/services.dart';

// ignore: avoid_classes_with_only_static_members
class HomeServices {
  static ApiService api = ApiService();

  static Future<List<SaleProductModel>?> getNewProducts(String categorie,) async {
    var data = await api.request(Services.getNewProduct, "GET",queryParamters: {
      "mainCategorie":categorie,
      "secret":"01017018407",
    });
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
  static Future<List<SaleProductModel>?> getSaleProducts(String categorie,) async {
    var data = await api.request(
        Services.getSalesProduct, "GET", queryParamters: {
      "mainCategorie": categorie,
      "secret": "01017018407",
    });
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