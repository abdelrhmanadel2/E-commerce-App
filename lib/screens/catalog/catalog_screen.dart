import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/screens/catalog/catalog_controller.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/row_product_card.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CatalogScreen extends StatelessWidget {
  CatalogScreen({Key? key, this.title = ""}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        bottomNavigationBar: BottomNavBar(
          index: 2,
        ),
        appBar: AppBarWidget(
          hasElevation: false,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
          ],
        ),
        body: GetBuilder<CatalogController>(
            init: CatalogController(),
            builder: (controller) {

              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: theme.primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            title,
                            style: theme.textTheme.headline1,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 30,
                            child: ListView.builder(
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3.50),
                                child: ActionChip(
                                    backgroundColor:
                                        theme.colorScheme.onSurface,
                                    label: Container(
                                      constraints:
                                          const BoxConstraints(minWidth: 100),
                                      child: Text(
                                        "T-Shirts",
                                        style: theme.textTheme.button!.apply(
                                            color:
                                                theme.colorScheme.background),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    onPressed: () {}),
                              ),
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Container(
                            color: theme.backgroundColor,
                            height: 24.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero),
                                      textStyle: MaterialStateProperty.all(
                                          theme.textTheme.caption),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              theme.accentColor),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.filter_list_rounded,
                                      // size: 24,
                                    ),
                                    label: const Text("Filter")),
                                TextButton.icon(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero),
                                      textStyle: MaterialStateProperty.all(
                                          theme.textTheme.caption),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              theme.accentColor),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.filter_list_rounded,
                                      // size: 24,
                                    ),
                                    label: const Text("Price: lowest to high")),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: controller.togelGrid,
                                  icon: Icon(controller.isGrid.value
                                          ? Icons.view_list_rounded
                                          : Icons.view_module
                                      // size: 24,
                                      ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 8,
                        child: controller.productList.isNotEmpty
                            ? StaggeredGridView.countBuilder(
                                padding: const EdgeInsets.only(
                                    top: 16, right: 16, left: 16),
                                crossAxisCount: 2,
                                itemCount: controller.productList.length,
                                itemBuilder: (context, int index) {
                                  ProductModel product =
                                      controller.productList[index];

                                  return RowProductCard(
                                    product: product,
                                    isGrid: controller.isGrid.value,
                                  );
                                },
                                staggeredTileBuilder: (int index) =>
                                    StaggeredTile.extent(
                                        controller.isGrid.value ? 1 : 2,
                                        controller.isGrid.value ? 283 : 104),
                                mainAxisSpacing: 26.0,
                                crossAxisSpacing: 16.0,
                              )
                            : const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.amber,
                                ),
                              )),
                  ]);
            }));
  }
}
