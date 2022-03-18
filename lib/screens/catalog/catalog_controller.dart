import 'package:ecommerce_app/models/sale_product_model.dart';
import 'package:ecommerce_app/services/catalog_service.dart';
import 'package:get/state_manager.dart';

class CatalogController extends GetxController {
  List<SaleProductModel> productList = <SaleProductModel>[];
  RxBool isGrid = false.obs;
  @override
  void onInit() {
    
    super.onInit();
  }

  void togelGrid() {
    isGrid.value = !isGrid.value;
    update();
  }

  void feachProducts(mainCategory,subCategory) async {
    var products = await CatalogService.getCategories(mainCategory: mainCategory,subCategory: subCategory);
    if (products != null) {
      productList = products;
      print(productList.length);
      update();
    }
  }
}
