import 'package:flutter/material.dart';
import '../../models/product.dart';

import '../../app/constants.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;

  const ProductCard({Key? key, required this.itemIndex, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 190,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Background
          Container(
            height: 166,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [BoxShadow(offset: Offset(0, 15), blurRadius: 25, color: Colors.black12)],
            ),
          ),
          // Image
          Positioned(top: 0, left: 0, child: Container(width: 200, height: 160, child: Image.asset(product.image, fit: BoxFit.scaleDown))),
          // Content
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Title
                    Text(product.title, style: Theme.of(context).textTheme.bodyLarge),
                    // Subtitle
                    Text(product.subTitle, style: Theme.of(context).textTheme.bodySmall),
                    // Price
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: Container(
                        child: Text('\$${product.price}'),
                        decoration: BoxDecoration(color: kSecondaryColor, borderRadius: BorderRadius.circular(22)),
                        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 5, horizontal: kDefaultPadding * 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
