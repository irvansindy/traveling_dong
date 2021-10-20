// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:travelling_dong/ui/pages/choose_seat_page.dart';
import 'package:travelling_dong/ui/widgets/custom_button.dart';
import 'package:travelling_dong/ui/widgets/interest_item.dart';
import 'package:travelling_dong/ui/widgets/photo_item_detail.dart';

class DetailDestinationPage extends StatelessWidget {
  const DetailDestinationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/destinasi1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(
          top: 236,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              whiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: defaultMarginPadding,
          ),
          child: Column(
            children: [
              // for icon emblem
              Container(
                width: 108,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/emblem.png',
                    ),
                  ),
                ),
              ),
              // for title destination
              Container(
                margin: EdgeInsets.only(
                  top: 256,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rialto Bridge',
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Italia',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(
                            right: 6,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_star.png',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '4.8',
                          // rating.toString(),
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // for description destination
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(
                    defaultMarginPadding,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'the oldest of the four bridges spanning the Grand Canal in Venice, Italy. Connecting the sestieri (districts) of San Marco and San Polo, it has been rebuilt several times since its first construction as a pontoon bridge in 1173, and is now a significant tourist attraction in the city.',
                      style: blackTextStyle.copyWith(
                        fontWeight: regular,
                        height: 2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // for photo destination detail
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        PhotoItemDetail(
                          imageUrl: 'assets/destinasi9.png',
                        ),
                        PhotoItemDetail(
                          imageUrl: 'assets/destinasi10.png',
                        ),
                        PhotoItemDetail(
                          imageUrl: 'assets/destinasi11.png',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Interests',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        InterestItem(
                          text: 'Kids Park',
                        ),
                        InterestItem(
                          text: 'Honor Bridge',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        InterestItem(
                          text: 'City Museum',
                        ),
                        InterestItem(
                          text: 'Central Mall',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // for price and submit button
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 2.500.000',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '@ Person',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      title: 'Book Now',
                      width: 170,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseSeatPage(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
