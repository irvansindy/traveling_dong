import 'package:flutter/material.dart';
import 'package:travelling_dong/shared/theme.dart';

class PhotoItemDetail extends StatelessWidget {
  final String imageUrl;

  const PhotoItemDetail({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          defaultMarginPadding,
        ),
        // ignore: prefer_const_constructors
        image: DecorationImage(
          // ignore: prefer_const_constructors
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
