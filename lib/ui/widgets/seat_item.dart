import 'package:flutter/material.dart';
import 'package:travelling_dong/cubit/seat_cubit.dart';
import 'package:travelling_dong/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // NOTE: for status, 0 : avail, 1 : selected, 2 : unavail
  // final int status;
  final String id;
  final bool isAvail;
  const SeatItem({
    Key? key,
    required this.id,
    this.isAvail = true,
    // required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvail) {
        return colorAvail;
      } else if (isSelected) {
        return primaryColor;
      } else {
        return colorunAvail;
      }
    }

    borderColor() {
      if (!isAvail) {
        return colorAvail;
      } else {
        return primaryColor;
      }
    }

    childText() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvail) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
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
      ),
    );
  }
}
