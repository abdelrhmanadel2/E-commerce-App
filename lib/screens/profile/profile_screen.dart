
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override

  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 4,),
      appBar: AppBarWidget(
        hasBackButton: false,
        hasElevation: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
        ],
      ),
      body:Column(
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
    "My Profile",
    style: theme.textTheme.headline1,
    ),
    const SizedBox(
    height: 12,
    ),
  ],
      ),
    ),
      Container(
        color: theme.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
        height: 64,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Image.asset(
            "assets/images/blackImage.png",
            fit: BoxFit.cover,
            ),
        ),
        ),
            const SizedBox(width: 10,),
            Column(
              children:  [
                const SizedBox(height: 10,),
                Text("Matilda Brown",style: theme.textTheme.headline1,),
                const SizedBox(height: 10,),
                Text("matildabrown@mail.com",style: theme.textTheme.caption),
              ],
            ),
          ],
        ),
      ),
  ],
    ),
    );
  }
}
