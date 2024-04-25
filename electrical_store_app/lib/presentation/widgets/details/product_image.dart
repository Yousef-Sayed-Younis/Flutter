import 'package:flutter/material.dart';

import '../../../app/constants.dart';

class ProductImage extends StatelessWidget {
  final String image;
  const ProductImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.width * .8,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * .7,
            height: size.width * .7,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor, shape: BoxShape.circle),
          ),
          Image.asset(image, fit: BoxFit.cover, width: size.width * .75, height: size.width * .75),
        ],
      ),
    );
  }
}
