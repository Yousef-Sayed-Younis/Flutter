import 'package:flutter/material.dart';

import '../app/constants.dart';
import '../models/product.dart';
import 'widgets/details/color_dot.dart';
import 'widgets/details/product_image.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBody(product: product),
      appBar: PreferredSize(preferredSize: Size.fromHeight(55), child: CustomAppBar()),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColorLight,
      title: Text('رجوع', style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}

class CustomBody extends StatelessWidget {
  final Product product;
  const CustomBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(color: Theme.of(context).primaryColorLight, borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Center(child: ProductImage(image: product.image)),
              // Three Dots
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(isSelected: true, fillColor: kTextLightColor),
                    ColorDot(fillColor: Colors.blue),
                    ColorDot(fillColor: Colors.red),
                  ],
                ),
              ),
              // Title
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(product.title, style: Theme.of(context).textTheme.titleLarge),
              ),
              // Price
              Text('\$${product.price}', style: TextStyle(fontSize: 28, color: kSecondaryColor, fontWeight: FontWeight.w600)),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
        // Description
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(product.description, style: TextStyle(color: Colors.white, fontSize: 19.0)),
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
        ),
      ],
    );
  }
}
