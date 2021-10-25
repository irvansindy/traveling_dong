import 'package:flutter/material.dart';
import 'package:travelling_dong/shared/theme.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Center(
        child: Text(
          'Card Page',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: extraBold,
          ),
        ),
      ),
    );
  }
}
