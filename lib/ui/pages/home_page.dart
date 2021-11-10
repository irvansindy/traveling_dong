// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelling_dong/cubit/auth_cubit.dart';
import 'package:travelling_dong/cubit/destionation_cubit.dart';
import 'package:travelling_dong/models/destination_model.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:travelling_dong/ui/widgets/custom_destination_tile.dart';
import 'package:travelling_dong/ui/widgets/custom_popular_destination.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestionationCubit>().fetchDestinations();
    super.initState();
  }

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

    Widget popularDestinations(List<DestinationModel> destinations) {
      // ignore: dead_code
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: destinations.map((DestinationModel destination) {
              return PopularDestination(destination);
            }).toList(),
          ),
        ),
      );
    }

    Widget newDestinations(List<DestinationModel> destinations) {
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
            Column(
              children: destinations
                  .map((DestinationModel destination) =>
                      DestinationTile(destination))
                  .toList(),
            ),
          ],
        ),
      );
    }

    return BlocConsumer<DestionationCubit, DestionationState>(
      listener: (context, state) {
        if (state is DestionationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: pinkColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is DestionationSuccess) {
          return SafeArea(
            child: ListView(
              children: [
                header(),
                popularDestinations(state.destinations),
                newDestinations(state.destinations),
              ],
            ),
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
