import 'package:flutter/material.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:travelling_dong/ui/pages/success_checkout_page.dart';
import 'package:travelling_dong/ui/widgets/booking_detail_item.dart';
import 'package:travelling_dong/ui/widgets/custom_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget routeCheckout() {
      // ignore: avoid_unnecessary_containers
      return Container(
        child: Column(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                height: 65,
                margin: const EdgeInsets.only(
                  top: 50,
                  bottom: 10,
                ),
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  image: DecorationImage(
                    // ignore: prefer_const_constructors
                    image: AssetImage(
                      'assets/image_route_checkout.png',
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TNG',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Indonesia',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'RIB',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Italia',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: const EdgeInsets.symmetric(
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
            // for destination photo, name, rate
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/destinasi1.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rialto Bridge',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Italia',
                        style: greyTextStyle.copyWith(
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
                      margin: const EdgeInsets.only(
                        right: 6,
                      ),
                      decoration: const BoxDecoration(
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
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // for head booking details
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            // for detail booking details
            BookingDetailItem(
              title: 'Traveler',
              valueText: '2 Person',
              valueColor: blackColor,
            ),
            BookingDetailItem(
              title: 'Seat',
              valueText: 'A3, B3',
              valueColor: blackColor,
            ),
            BookingDetailItem(
              title: 'Insurance',
              valueText: 'YES',
              valueColor: cyanColor,
            ),
            BookingDetailItem(
              title: 'Refundable',
              valueText: 'NO',
              valueColor: pinkColor,
            ),
            BookingDetailItem(
              title: 'VAT',
              valueText: '45%',
              valueColor: blackColor,
            ),
            BookingDetailItem(
              title: 'Price',
              valueText: 'IDR 8.500.690,-',
              valueColor: blackColor,
            ),
            BookingDetailItem(
              title: 'Grand Total',
              valueText: 'IDR 12.000.000,-',
              valueColor: primaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetail() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
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
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_card.png',
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: const EdgeInsets.only(
                              right: 6,
                            ),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icon_plane.png',
                                ),
                              ),
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
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 12.000.000,-',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget submitButton() {
      return CustomButton(
        title: 'Pay Now',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (context) => SuccessCheckoutPage(),
          ),
        ),
        margin: const EdgeInsets.only(
          top: 30,
        ),
      );
    }

    Widget tacButton() {
      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.symmetric(
          vertical: 30,
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
            routeCheckout(),
            content(),
            paymentDetail(),
            submitButton(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
