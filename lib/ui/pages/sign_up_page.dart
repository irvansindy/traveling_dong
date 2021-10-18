import 'package:flutter/material.dart';
import 'package:travelling_dong/ui/widgets/custom_button.dart';
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
        return Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  hintText: 'Your Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget inputEmail() {
        return Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  hintText: 'Your Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget inputPassword() {
        return Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget inputHobby() {
        return Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hobby',
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  hintText: 'Your Hobby',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
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
