import 'package:flutter/material.dart';
import 'package:travelling_dong/models/destination_model.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:travelling_dong/ui/pages/detail_page.dart';

class PopularDestination extends StatelessWidget {
  final DestinationModel destination;

  const PopularDestination(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          // ignore: prefer_const_constructors
          builder: (context) => DetailDestinationPage(destination),
        ),
      ),
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(
          left: defaultMarginPadding,
        ),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(
                bottom: 20,
              ),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  defaultMarginPadding,
                ),
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: NetworkImage(
                    destination.imageUrl,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        defaultMarginPadding,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.only(
                          right: 4,
                        ),
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          // ignore: prefer_const_constructors
                          image: DecorationImage(
                            // ignore: prefer_const_constructors
                            image: AssetImage(
                              'assets/icon_star.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        destination.rating.toString(),
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(left: 10),
              // ignore: prefer_const_constructors
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    destination.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 5,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    destination.country,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
