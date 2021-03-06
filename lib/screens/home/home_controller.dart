// import 'package:ecommerce_app/models/product_model/product_models.dart';
import 'package:ecommerce_app/models/sale_product_model.dart';
import 'package:ecommerce_app/services/home_services.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  List<SaleProductModel> menProductList = <SaleProductModel>[];
  List<SaleProductModel> womenProductList = <SaleProductModel>[];
  List<SaleProductModel> kidProductList = <SaleProductModel>[];
  List<SaleProductModel> menSaleProductList = <SaleProductModel>[];
  List<SaleProductModel> womenSaleProductList = <SaleProductModel>[];
  List<SaleProductModel> kidSaleProductList = <SaleProductModel>[];

  HomeController({this.sale = false});
  var sale;
  var loaded = false;

  @override
  void onInit() {
    feachNewProducts();
    if (sale) fetchSaleProduct();
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
