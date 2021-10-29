// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelling_dong/cubit/auth_cubit.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:travelling_dong/ui/widgets/custom_destination_tile.dart';
import 'package:travelling_dong/ui/widgets/custom_popular_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      // ignore: avoid_unnecessary_containers
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                top: 30,
                left: defaultMarginPadding,
                right: defaultMarginPadding,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: duplicate_ignore
                      children: [
                        Text(
                          'Howdy, \n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where to fly today?',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          // 'assets/image_profile.png',
                          'assets/reka_profile.jpeg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestinations() {
      // ignore: dead_code
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              PopularDestination(
                name: 'Rialto Bridge',
                city: 'Italia',
                imageUrl: 'assets/destinasi1.png',
                rating: 4.8,
              ),
              PopularDestination(
                name: 'Santorini',
                city: 'Greece',
                imageUrl: 'assets/destinasi2.png',
                rating: 4.5,
              ),
              PopularDestination(
                name: 'Port de Cap d Ail',
                city: 'Monaco',
                imageUrl: 'assets/destinasi3.png',
                rating: 4.7,
              ),
              PopularDestination(
                name: 'Sagami Kokubunji Temple',
                city: 'Japan',
                imageUrl: 'assets/destinasi4.png',
                rating: 4.7,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 100,
          left: defaultMarginPadding,
          right: defaultMarginPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/destinasi7.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Italia',
              imageUrl: 'assets/destinasi8.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/destinasi7.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Italia',
              imageUrl: 'assets/destinasi8.png',
              rating: 4.5,
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          popularDestinations(),
          newDestinations(),
        ],
      ),
    );
  }
}
