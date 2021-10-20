import 'package:flutter/material.dart';
import 'package:travelling_dong/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE: for status, 0 : avail, 1 : selected, 2 : unavail
  final int status;
  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return colorAvail;
        case 1:
          return primaryColor;
        case 2:
          return colorunAvail;
        default:
          return colorunAvail;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return primaryColor;
        case 1:
          return primaryColor;
        case 2:
          return colorunAvail;
        default:
          return colorunAvail;
      }
    }

    childText() {
      switch (status) {
        case 0:
          // ignore: prefer_const_constructors
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          // ignore: prefer_const_constructors
          return SizedBox();
        default:
          // ignore: prefer_const_constructors
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: childText(),
    );
  }
}
