import 'package:flutter/material.dart';
import 'package:travelling_dong/cubit/page_cubit.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:travelling_dong/ui/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageSuccess() {
      return Container(
        width: 300,
        height: 150,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_success.png',
            ),
          ),
        ),
      );
    }

    Widget textSuccess() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new \nworld of experiences?',
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
        title: 'My Bookings',
        width: 220,
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          top: 50,
        ),
        onPressed: () {
          context.read<PageCubit>().setPage(1);
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/main',
            (route) => false,
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageSuccess(),
            textSuccess(),
            submitButton(),
          ],
        ),
      ),
    );
  }
}
