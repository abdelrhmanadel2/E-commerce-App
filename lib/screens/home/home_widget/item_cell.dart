import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCell extends StatelessWidget {
   ItemCell({Key? key,required this.addToFavorite, required this.hasDiscount, required this.title, required this.rating,  this.price = "", this.priceAfter="", this.priceBefore="", this.discountPrecentage="", required this.storeName, required this.totalRating, required this.imagePath }) : super(key: key);
  final bool hasDiscount;
  final String imagePath;
  final String discountPrecentage;
  final String title;
  final String storeName;
  final double rating;
  final String totalRating;
  final String price;
  final String priceAfter;
  final String priceBefore;
  Function addToFavorite;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      width: 190,
      height: 276,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children:[
                Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                  height: 190,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child:
                    Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: 148,
                      height: 184,
                    ),
                  ),
                ),
                Positioned(
                  left: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: hasDiscount? Container(
                      height: 24,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Text(
                        discountPrecentage,
                        style:extend(Styles.kTextStyleHelperText, const TextStyle(color: kWhiteColor)),
                      ),
                    ):Container(
                      height: 24,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kBlackColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Text(
                        "NEW",
                        style:extend(Styles.kTextStyleHelperText, const TextStyle(color: kWhiteColor)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: -10.0,
                  child:CustomElevatedButton(
                    width: 30,
                    height: 30,
                    forground: kBlackColor,
                    background: kWhiteColor,
                    circle: true,
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline_sharp, size: 15.0),
                  ),

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RatingBarIndicator(
                  rating: rating,
                  physics: const BouncingScrollPhysics(),
                  unratedColor: Colors.grey,
                  itemBuilder: (context, index) =>  Icon(
                    index<rating?Icons.star:Icons.star_border,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 15.0,
                  direction: Axis.horizontal,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                  child: Text(
                    "($totalRating)",
                    textAlign: TextAlign.left,
                    style:extend(Styles.kTextStyleDescription, const TextStyle(color: kGrayColor)),
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
              child: Text(
                storeName,
                textAlign: TextAlign.left,
                style:extend(Styles.kTextStyleDescription, const TextStyle(color: kGrayColor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style:extend(Styles.kTextStyleitemHeadline, const TextStyle(color: kBlackColor)),
              ),
            ),
            if (hasDiscount) Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                  child: Text(
                    priceBefore,
                    textAlign: TextAlign.left,
                    style:extend(Styles.kTextStyleDescription, const TextStyle(color: kGrayColor,decoration: TextDecoration.lineThrough)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
                  child: Text(
                    priceAfter,
                    textAlign: TextAlign.left,
                    style:extend(Styles.kTextStyleDescription, const TextStyle(color: kBlackColor)),
                  ),
                ),
              ],
            ) else Padding(
    padding: const EdgeInsets.fromLTRB(0.0,0.0,5.0,0.0),
    child: Text(
    price,
    textAlign: TextAlign.left,
    style:extend(Styles.kTextStyleDescription, const TextStyle(color: kBlackColor)),
    ),
    ),
          ],
        ),
      ),
    );
  }
}
