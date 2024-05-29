import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/components/custom_date_picker.dart';
import 'package:flutter_cafe/core/components/dashed_line.dart';
import 'package:flutter_cafe/core/components/spaces.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/core/extensions/date_time_ext.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';
import 'package:flutter_cafe/presentations/home/widgets/custom_tab_bar.dart';
import 'package:flutter_cafe/presentations/report/widgets/report_menu.dart';
import 'package:flutter_cafe/presentations/report/widgets/report_title.dart';
import 'package:flutter_cafe/presentations/reservation/bloc/reservation/reservation_bloc.dart';
import 'package:flutter_cafe/presentations/reservation/dialogs/form_reservasi_dialog.dart';
import 'package:flutter_cafe/presentations/reservation/models/reservation_model.dart';
import 'package:flutter_cafe/presentations/reservation/models/reservation_response_model.dart';
import 'package:flutter_cafe/presentations/reservation/widgets/add_reservasi.dart';
import 'package:flutter_cafe/presentations/reservation/widgets/card_reservasi.dart';
import 'package:flutter_cafe/presentations/reservation/widgets/reservation_title.dart';
import 'package:flutter_cafe/presentations/setting/widgets/add_data.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  int currentIndex = 0;

  void indexValue(int index) {
    currentIndex = index;
    setState(() {});
  }

  DateTime fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime toDate = DateTime.now();

  @override
  void initState() {
    context
        .read<ReservationBloc>()
        .add(const ReservationEvent.getReservations());
    super.initState();
  }

  void onAddDataTap() {
    showDialog(
      context: context,
      builder: (context) => const FormReservasiDialog(),
    );
  }

  void onReservationEditTap(Reservation dataReservasi) {
    showDialog(
      context: context,
      builder: (context) => FormReservasiDialog(data: dataReservasi),
    );
  }

  @override
  Widget build(BuildContext context) {
    String searchDateFormatted =
        '${fromDate.toFormattedDate2()} to ${toDate.toFormattedDate2()}';

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                // LEFT CONTENT
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ListView(
                      padding: const EdgeInsets.all(16.0),
                      children: [
                        const Text(
                          'Reservasi',
                          style: TextStyle(
                            color: AppColors.charchoal,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          DateTime.now().toFormattedDate(),
                          style: const TextStyle(
                            color: AppColors.charchoal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // RIGHT CONTENT
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: CustomDatePicker(
                            prefix: const Text('From: '),
                            initialDate: fromDate,
                            onDateSelected: (selectedDate) {
                              setState(() {
                                fromDate = selectedDate;
                              });
                            },
                          ),
                        ),
                        const SpaceWidth(20.0),
                        Flexible(
                          child: CustomDatePicker(
                            prefix: const Text('To: '),
                            initialDate: toDate,
                            onDateSelected: (selectedDate) {
                              setState(() {
                                toDate = selectedDate;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                child: BlocBuilder<ReservationBloc, ReservationState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primary,
                        ),
                      );
                    }, loaded: (reservations) {
                      return GridView.builder(
                        shrinkWrap: true,
                        itemCount: reservations.length + 1,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.85,
                          crossAxisCount: 5,
                          crossAxisSpacing: 30.0,
                          mainAxisSpacing: 30.0,
                        ),
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return AddReservasi(
                                title: 'Tambah Reservasi',
                                onPressed: onAddDataTap);
                          }
                          final item = reservations[index - 1];
                          return ManageReservationCard(
                            data: item,
                            onEditTap: () => onReservationEditTap(item),
                          );
                        },
                      );
                    });
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
