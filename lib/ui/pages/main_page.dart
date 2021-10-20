// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelling_dong/ui/pages/home_page.dart';
import 'package:travelling_dong/ui/widgets/custom_bottom_navigation.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            left: defaultMarginPadding,
            right: defaultMarginPadding,
            bottom: 30,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_book.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_setting.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
