import 'package:flutter/material.dart';
import 'package:travelling_dong/ui/widgets/custom_button.dart';
import 'package:travelling_dong/ui/widgets/custom_text_form_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget inputName() {
        // ignore: prefer_const_constructors
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
        );
      }

      Widget inputEmail() {
        // ignore: prefer_const_constructors
        return CustomTextFormField(
          title: 'Email',
          hintText: 'Your Email Address',
        );
      }

      Widget inputPassword() {
        // ignore: prefer_const_constructors
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obscureText: true,
        );
      }

      Widget inputHobby() {
        // ignore: prefer_const_constructors
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          top: 30,
        ),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            inputName(),
            inputEmail(),
            inputPassword(),
            inputHobby(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          top: 50,
          bottom: 70,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      backgroundColor: backColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMarginPadding,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
