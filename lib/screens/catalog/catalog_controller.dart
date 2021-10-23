import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/services/catalog_service.dart';
import 'package:get/state_manager.dart';

class CatalogController extends GetxController {
  List<ProductModel> productList = <ProductModel>[];
  RxBool isGrid = false.obs;

  @override
  void onInit() {
    feachProducts();
    super.onInit();
  }

  void togelGrid() {
    isGrid.value = !isGrid.value;
    update();
  }

  void feachProducts() async {
    var products = await CatalogService.getCategories();
    if (products != null) {
      productList = products;
      print(productList.length);
      update();
    }
  }
}
