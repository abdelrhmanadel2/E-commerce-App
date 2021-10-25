import 'package:dropdown_below/dropdown_below.dart';
import 'package:ecommerce_app/screens/productscreen/product_details_controller.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetatilsScreen extends StatelessWidget {
  const ProductDetatilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBarWidget(
          hasElevation: false,
          title: "Short dress",
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share))
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          color: Colors.white,
          child: CustomElevatedButton(
            text: "Add to cart",
            height: 48,
            width: 343.w,
          ),
        ),
        body: GetBuilder<ProductDetailsController>(
            init: ProductDetailsController(),
            builder: (controller) {
              return SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        width: ScreenUtil().screenWidth,
                        height: 413.r,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, indx) => Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: Image.network(
                                    "https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F2f%2Fca%2F2fcabaf2153bdb75ea2b4c64528b01eaa50f363d.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bladies_dresses_bodycon%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]",
                                    fit: BoxFit.fill,
                                    width: 275.w,
                                    height: 413.r,
                                  ),
                                )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, bottom: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: DropDown(
                                dropdownItems: controller.sizes,
                                onChange: controller.onChangeSize,
                                selectedItem: controller.selectedSize,
                                width: 100.w,
                                hintText: "Sizes",
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: DropDown(
                                dropdownItems: controller.color,
                                onChange: controller.onChangeColor,
                                selectedItem: controller.selectedColor,
                                width: 100.w,
                                hintText: "Color",
                              ),
                            ),
                            CustomElevatedButton(
                                width: 36,
                                height: 36,
                                circle: true,
                                background: theme.colorScheme.surface,
                                icon: const Icon(
                                  Icons.favorite_border,
                                  size: 12,
                                ),
                                forground: theme.dividerColor,
                                onPressed: () {}),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "H&M",
                                  style: theme.textTheme.headline2,
                                ),
                                Text(
                                  "\$19.99",
                                  style: theme.textTheme.headline2,
                                )
                              ],
                            ),
                            Text(
                              "Short black dress",
                              style: theme.textTheme.caption,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RatingBarIndicator(
                                  rating: 2.5,
                                  physics: const BouncingScrollPhysics(),
                                  unratedColor: Colors.grey,
                                  itemBuilder: (context, index) => Icon(
                                    index < 2.5
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 15.0,
                                  direction: Axis.horizontal,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "(${5})",
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.caption,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                              style: theme.textTheme.bodyText2,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          
                          
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
