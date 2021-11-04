import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/screens/productscreen/product_details.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class RowProductCard extends StatelessWidget {
  const RowProductCard({Key? key, required this.product, this.isGrid = false})
      : super(key: key);
  final ProductModel product;
  final bool isGrid;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final list = [
      Text(
        product.title,
        style: theme.textTheme.subtitle1,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      const SizedBox(
        height: 4,
      ),
      Text(
        "Dorothy Perkins",
        style: theme.textTheme.caption,
      ),
      const SizedBox(
        height: 8,
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RatingBarIndicator(
            rating: product.rating!.rate,
            physics: const BouncingScrollPhysics(),
            unratedColor: Colors.grey,
            itemBuilder: (context, index) => Icon(
              index < product.rating!.rate ? Icons.star : Icons.star_border,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 15.0,
            direction: Axis.horizontal,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "(${product.rating!.count})",
            textAlign: TextAlign.left,
            style: theme.textTheme.caption,
          ),
        ],
      ),
    ];
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        decoration: BoxDecoration(
          color: isGrid ? Colors.transparent : theme.colorScheme.surface,
          borderRadius: const BorderRadius.all(
              Radius.circular(8) //                 <--- border radius here
              ),
        ),
        child: Flex(
            direction: isGrid ? Axis.vertical : Axis.horizontal,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    product.image,
                    fit: BoxFit.fill,
                    width: isGrid ? 162 : 104,
                    height: isGrid ? 184 : 104,
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isGrid) ...list.reversed else ...list,
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${product.price} \$",
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
      Positioned(
          bottom: isGrid ? 60 : -20,
          right: -10,
          child: CustomElevatedButton(
              width: 36,
              height: 36,
              circle: true,
              background: theme.colorScheme.surface,
                 forground: theme.dividerColor,
              icon: const Icon(
                Icons.favorite_border,
                size: 12,
              ),
           
              onPressed: () {
                Get.to(() => ProductDetatilsScreen());
              })),
    ]);
  }
}
