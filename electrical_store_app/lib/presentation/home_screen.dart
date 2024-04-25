import 'package:flutter/material.dart';

import '../models/product.dart';
import 'details_screen.dart';
import 'res/app_theme.dart';
import 'widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBody(),
      appBar: PreferredSize(preferredSize: Size.fromHeight(55), child: CustomAppBar()),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(color: Theme.of(context).primaryColorLight, borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
          ),
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) => GestureDetector(
              child: ProductCard(itemIndex: index, product: products[index]),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen(product: products[index]))),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  static IconData iconTheme = Icons.sunny;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('مرحبا بكم بمتجر الالكترونيات',),
      actions: [
        IconButton(
            icon: Icon(iconTheme, color: Colors.white),
            onPressed: () =>
                setState(() => {AppTheme.changeThemeMode(), iconTheme == Icons.sunny ? iconTheme = Icons.nightlight_round : iconTheme = Icons.sunny}))
      ],
    );
  }
}
