import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final bool? positioned;

  const ImageContainer({
    Key? key,
    required this.imageUrl,
    this.height,
    this.positioned,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return positioned == true
        ? Positioned(
            top: 0,
            child: SizedBox(
              height: height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                imageUrl,
                scale: 4,
                fit: BoxFit.fitWidth,
              ),
            ),
          )
        : SizedBox(
            height: height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              imageUrl,
              scale: 4,
              fit: BoxFit.fitWidth,
            ),
          );
  }
}
