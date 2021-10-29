import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelling_dong/cubit/auth_cubit.dart';
import 'package:travelling_dong/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              width: 300,
              height: 211,
              padding: EdgeInsets.all(
                defaultMarginPadding,
              ),
              decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: AssetImage(
                    'assets/image_card.png',
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.5),
                    blurRadius: 50,
                    // ignore: prefer_const_constructors
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: whiteTextStyle.copyWith(
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              state.user.name,
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: medium,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.only(
                          right: 6,
                        ),
                        decoration: BoxDecoration(
                          // ignore: prefer_const_constructors
                          image: DecorationImage(
                            // ignore: prefer_const_constructors
                            image: AssetImage(
                              'assets/icon_plane.png',
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: whiteColor.withOpacity(0.5),
                              blurRadius: 50,
                              // ignore: prefer_const_constructors
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        state.user.balance.toString(),
                        style: whiteTextStyle.copyWith(
                          fontSize: 26,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget textBonus() {
      // ignore: avoid_unnecessary_containers
      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that \nyou can buy a flight ticket',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget submitButton() {
      return CustomButton(
        title: 'Start Fly Now',
        width: 220,
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          top: 50,
        ),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
      );
    }

    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            textBonus(),
            submitButton(),
          ],
        ),
      ),
    );
  }
}
