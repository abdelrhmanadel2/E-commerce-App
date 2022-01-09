
import 'package:ecommerce_app/utils/styles.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/widgets/input_field_text.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
 var item =[1,2,3];
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Scaffold(

      bottomNavigationBar: BottomNavBar(index: 2,),
      appBar:AppBarWidget(hasElevation: false, color: theme.colorScheme.background,hasBackButton: false,
        actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
      ],),
      body: SingleChildScrollView(
    child: Padding(
    padding:  const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    const SizedBox(
    height: 18,
    ),
    Text(
    "My Bag",
    style: theme.textTheme.headline1,
    ),
    const SizedBox(
    height: 12,
    ),
      Container(
        height: 400,
        child: ListView.builder(
            itemCount: item.length,
            itemBuilder:  (BuildContext context, int index) {
              String title="Pullover";
              var itemColor = "black";
              var itemSize = "XL";
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 8),
                child: GestureDetector(
                  onTap: (){
                    print("hiii");
                  },
                  child: Container(
                    height: 120,
                    width: Get.width*0.88,
                    decoration:  BoxDecoration(

                      color: theme.colorScheme.surface,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),

                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: Get.width*0.6/2,
                          decoration:const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),),
                            child: Image.asset("assets/images/blackImage.png",fit: BoxFit.fitWidth,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                textAlign: TextAlign.left,
                                style:extend(Styles.kTextStyleHeadline3,  TextStyle(color: theme.colorScheme.onSurface)),
                              ),
                              const SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text: 'Color: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 11))),
                                        TextSpan(text: itemColor ,style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 11))),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text: 'Size: ',style:extend(theme.textTheme.button ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 11))),
                                        TextSpan(text: itemSize,style: extend(theme.textTheme.button ?? const TextStyle(), const TextStyle(fontSize: 11))),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4,),
                              SizedBox(
                                width: Get.width*0.37,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomElevatedButton(elivation:1.0,width: 36, height: 36,circle: true,background: theme.colorScheme.surface,icon: Icon(Icons.add,color: theme.colorScheme.onBackground,),onPressed: (){
                                      item[index] = item[index]+1;
                                    },),
                                    const SizedBox(width: 5,),
                                    Text(
                                      "${item[index]}",
                                      textAlign: TextAlign.left,
                                      style:extend(Styles.kTextStyleHeadline3,  TextStyle(color: theme.colorScheme.onSurface)),
                                    ),
                                    const SizedBox(width: 5,),
                                    CustomElevatedButton(elivation:1.0,width: 36, height: 36,background: theme.colorScheme.surface,circle: true,icon: Icon(Icons.zoom_out_sharp,color: theme.colorScheme.onBackground,),onPressed: (){
                                      if(item[index]>1){
                                      item[index]=item[index]-1;}
                                    },),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
      const SizedBox(height: 10,),
      Container(
        decoration:  BoxDecoration(

          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),

        ),
        height: 45,
        width: Get.height*0.88,
        child: Row(
          children: [
            Container(
              width: Get.height*0.375,
              child: CustomInputfield(
                onchange: (value){print(value);},
                labelText: "Enter Your Promo Code",
              ),
            ),
        const SizedBox(width: 5,),
        CustomElevatedButton(elivation:1.0,width: 36, height: 36,background: theme.dividerColor,circle: true,icon: Icon(Icons.arrow_forward,color: theme.colorScheme.primaryVariant,),onPressed: (){
          print("hiiii");
        },),
          ],
        ),
      ),
      const SizedBox(height: 10,),
      Container(
        decoration:  const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),

        ),
        height: 45,
        width: Get.height*0.88,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Total amount:",style:extend(theme.textTheme.headline3 ?? const TextStyle(), TextStyle(color: theme.dividerColor,fontSize: 14))),
            Text("145\$",style: extend(theme.textTheme.headline2 ?? const TextStyle(), TextStyle(color: theme.colorScheme.onBackground,fontSize: 18))),

          ],
        ),
      ),
     CustomElevatedButton(
          width: Get.height*0.8,
          elivation: 0.9,
          height: 48,
          onPressed: () {
           print("hi");
          },
          text: "CHECK OUT"),
    ],
    ),

    ],
    ),
    ),
    ),
    );
  }
}
