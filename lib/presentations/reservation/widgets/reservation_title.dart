import 'package:flutter/material.dart';
import 'package:flutter_cafe/core/components/spaces.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/core/extensions/date_time_ext.dart';

class ReservationTitle extends StatelessWidget {
  const ReservationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reservation',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SpaceHeight(4.0),
        Text(
          DateTime.now().toFormattedDate(),
          style: const TextStyle(
            color: AppColors.subtitle,
            fontSize: 16,
          ),
        ),
        const SpaceHeight(20.0),
        const Divider(),
      ],
    );
  }
}
