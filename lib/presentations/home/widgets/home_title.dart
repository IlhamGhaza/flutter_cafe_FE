import 'package:flutter/material.dart';
import 'package:flutter_cafe/core/components/search_input.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/core/extensions/date_time_ext.dart';

class HomeTitle extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;

  const HomeTitle({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My cafe',
              style: TextStyle(
                color: AppColors.charchoal,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            // const SizedBox(height: 4.0),
            Text(
              DateTime.now().toFormattedDate(),
              style: const TextStyle(
                color: AppColors.charchoal,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 200.0,
          // height: 80.0,
          child: SearchInput(
            controller: controller,
            onChanged: onChanged,
            hintText: 'Search for food, coffe, etc..',
          ),
        ),
      ],
    );
  }
}
