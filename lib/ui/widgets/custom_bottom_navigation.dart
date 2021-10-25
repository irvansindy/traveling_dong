import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:travelling_dong/cubit/page_cubit.dart';
import 'package:travelling_dong/shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  const CustomBottomNavigationItem({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<PageCubit>().setPage(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: prefer_const_constructors
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? primaryColor
                : greyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? primaryColor
                  : transColor,
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
