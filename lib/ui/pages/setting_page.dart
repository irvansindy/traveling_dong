import 'package:flutter/material.dart';
import 'package:travelling_dong/shared/theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Center(
        child: Text(
          'Setting Page',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: extraBold,
          ),
        ),
      ),
    );
  }
}
