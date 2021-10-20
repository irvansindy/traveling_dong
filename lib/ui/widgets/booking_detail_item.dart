import 'package:flutter/material.dart';
import 'package:travelling_dong/shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;

  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.valueText,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Text(
              title,
              style: blackTextStyle,
            ),
          ),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
