import 'package:flutter/material.dart';
import 'package:flutter_cafe/core/extensions/date_time_ext.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';
import 'package:flutter_cafe/presentations/reservation/models/reservation_response_model.dart';

import '../../../core/constants/colors.dart';

class ManageReservationCard extends StatelessWidget {
  final Reservation data;
  final VoidCallback onEditTap;

  const ManageReservationCard({
    super.key,
    required this.data,
    required this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: AppColors.card),
          borderRadius: BorderRadius.circular(19),
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.disabled.withOpacity(0.4),
                ),
                child: Text(
                  '${data.tableNumber!}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Pelanggan : ',
                    children: [
                      TextSpan(
                        text: data.customerName,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              Center(
                  child: Text(
                data.reservationDate!.toFormattedDate(),
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ))
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: onEditTap,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: AppColors.primary,
                ),
                child: Assets.icons.edit.svg(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
