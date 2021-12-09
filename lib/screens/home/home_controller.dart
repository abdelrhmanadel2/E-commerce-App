import 'package:ecommerce_app/models/Sale_Product_Model.dart';
import 'package:ecommerce_app/models/product_model/product_models.dart';
import 'package:ecommerce_app/services/home_services.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  List<ProductModels> menProductList = <ProductModels>[];
  List<ProductModels> womenProductList = <ProductModels>[];
  List<ProductModels> kidProductList = <ProductModels>[];
  List<SaleProductModel> menSaleProductList = <SaleProductModel>[];
  List<SaleProductModel> womenSaleProductList = <SaleProductModel>[];
  List<SaleProductModel> kidSaleProductList = <SaleProductModel>[];

  HomeController({this.sale = false});
  var sale;
  var loaded = false;

  @override
  void onInit() {
    feachNewProducts();
    super.onInit();
  }

  void feachNewProducts() async {
    var manproducts = await HomeServices.getNewProducts("Men");
    var womemanproducts = await HomeServices.getNewProducts("Ladies");
    var kidproducts = await HomeServices.getNewProducts("Kids");
    menProductList = manproducts ?? [];
    womenProductList = womemanproducts ?? [];
    kidProductList = kidproducts ?? [];
    loaded = true;
    update();
    print(menProductList.length);
    print(womenProductList.length);
    print(kidProductList.length);
  }

  void fetchSaleProduct() async {
    loaded = false;
    var manproducts = await HomeServices.getSaleProducts("Men");
    var womenproducts = await HomeServices.getSaleProducts("Ladies");
    var kidproducts = await HomeServices.getSaleProducts("Kids");
    menSaleProductList = manproducts ?? [];
    womenSaleProductList = womenproducts ?? [];
    kidSaleProductList = kidproducts ?? [];
    loaded = true;
    update();
    print(menSaleProductList.length);
    print(womenSaleProductList.length);
    print(kidSaleProductList.length);
  }
}
