import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/models/sale_product_model.dart';
import 'package:ecommerce_app/screens/productscreen/product_details.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
class ItemCell extends StatelessWidget {
  ItemCell(
      {Key? key,
     required  this.product})
      : super(key: key);
 
  final SaleProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 190,
      height: 276,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            Get.to(ProductDetatilsScreen(product: product));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                    height: 190,
                    child: CachedNetworkImage(
                      imageUrl: product.images[0].url,
                      imageBuilder: (context, imageProvider) => Container(
                        height: 184,
                        width: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: imageProvider,
        
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Image.asset(
                        'assets/images/image 2.png',
                        width: 148,
                        height: 184,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: product.sale
                          ? Container(
                              height: 24,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Text(
                                "${((product.whitePrice.value.numberDouble/product.price.value.numberDouble)*100).round()}%",
                                style: extend(Styles.kTextStyleHelperText,
                                    const TextStyle(color: kWhiteColor),),
                              ),
                            )
                          : Container(
                              height: 24,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: kBlackColor,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Text(
                                "NEW",
                                style: extend(Styles.kTextStyleHelperText,
                                    const TextStyle(color: kWhiteColor),),
                              ),
                            ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: -10.0,
                    child: CustomElevatedButton(
                      width: 30,
                      height: 30,
                      background: theme.colorScheme.surface,
                      forground: theme.dividerColor,
                      circle: true,
                      onPressed: () {},
                      icon: Icon(Icons.favorite_outline_sharp, size: 15.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RatingBarIndicator(
                    rating: product.rating.rate.numberDouble,
                    physics: const BouncingScrollPhysics(),
                    unratedColor: Colors.grey,
                    itemBuilder: (context, index) => Icon(
                      index < product.rating.rate.numberDouble ? Icons.star : Icons.star_border,
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
                    "(${product.rating.count.numberInt})",
                    textAlign: TextAlign.left,
                    style: theme.textTheme.caption,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                child: Text(
                  "H&M",
                  textAlign: TextAlign.left,
                  style: extend(Styles.kTextStyleDescription,
                      const TextStyle(color: kGrayColor),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                child: Text(
                  product.name,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.subtitle1,
                  maxLines: 1,
                ),
              ),
              if (product.sale)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                      child: Text("${product.price.value.numberDouble}",
                          textAlign: TextAlign.left,
                          style: theme.textTheme.bodyText2!.apply(
                              color: theme.dividerColor,
                              decorationColor: theme.dividerColor,
                              decoration: TextDecoration.lineThrough,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                      child: Text(
                        "${product.whitePrice.value.numberDouble}",
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyText2!
                            .apply(color: theme.errorColor),
                      ),
                    ),
                  ],
                )
              else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                  child: Text(
                  "${product.price.value.numberDouble}",
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyText2,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
