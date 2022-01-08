
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
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
    "My Cart",
    style: theme.textTheme.headline1,
    ),
    const SizedBox(
    height: 12,
    ),
    ],
    ),

    ],
    ),
    ),
    ),
    );
  }
}
