import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:ecommerce_app/screens/creditcard/credit_card_controller.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/loading_widget.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_input_form/credit_card_input_form.dart';
import 'package:get/get.dart';
class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var visa = false;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 4,),
      appBar: AppBarWidget(
        hasElevation: false,
        title: "Saved Credit Card",
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      backgroundColor: theme.colorScheme.primary,
      body:GetBuilder<CredutCardController>(
        init: CredutCardController(),
    builder: (controller) {
          return controller.showScreen? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0,),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
            return CreditCardInputForm(
                backCardDecoration: BoxDecoration(
                color: visa?const Color(0xFF9B9B9B):const Color(0xFF222222),
            ),
              frontCardDecoration:  BoxDecoration(
                image:  DecorationImage(
                  image: visa?const AssetImage("assets/images/Component 7 – 1@3x.png"):const AssetImage("assets/images/Component 3 – 1@3x.png"),fit: BoxFit.cover),
              ),
               resetButtonDecoration: BoxDecoration(
                 color: theme.colorScheme.secondary,
                 borderRadius: const BorderRadius.all(
                   Radius.circular(10),
                 ),
               ),
              nextButtonDecoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              prevButtonDecoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              intialCardState: InputState.DONE,
              initialAutoFocus: false,
              cardCVV: '222',
              cardName: 'Jeongtae Kim',
              cardNumber: '1111111111111111',
              cardValid: '12/12',
            );

          },),
        ):Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "to be sure that's you how connect to you bank information",
                  style: theme.textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                 Icon(Icons.app_blocking,size: 70.0,color: theme.colorScheme.onBackground,),
                ElevatedButton(
                  onPressed: (){controller.authenticate();},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text('Authenticate'),
                      Icon(Icons.perm_device_information),
                    ],
                  ),
                ),

              ],
            ),
          );},
      ),
    );
  }
}
