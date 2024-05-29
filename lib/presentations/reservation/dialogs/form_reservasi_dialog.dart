import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/components/components.dart';
import 'package:flutter_cafe/core/components/custom_date_picker.dart';
import 'package:flutter_cafe/core/components/custom_date_picker2.dart';
import 'package:flutter_cafe/core/components/custom_text_field.dart';
import 'package:flutter_cafe/core/components/custom_time_picker.dart';
import 'package:flutter_cafe/core/extensions/build_context_ext.dart';
import 'package:flutter_cafe/core/extensions/date_time_ext.dart';
import 'package:flutter_cafe/presentations/reservation/bloc/add_reservation/add_reservation_bloc.dart';
import 'package:flutter_cafe/presentations/reservation/bloc/edit_reservation/edit_reservation_bloc.dart';
import 'package:flutter_cafe/presentations/reservation/bloc/reservation/reservation_bloc.dart';
import 'package:flutter_cafe/presentations/reservation/models/reservation_model.dart';
import 'package:flutter_cafe/presentations/reservation/models/reservation_response_model.dart';
import 'package:flutter_cafe/presentations/setting/bloc/discount/discount_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';

class FormReservasiDialog extends StatefulWidget {
  final Reservation? data;
  const FormReservasiDialog({super.key, this.data});

  @override
  State<FormReservasiDialog> createState() => _FormDiscountDialogState();
}

class _FormDiscountDialogState extends State<FormReservasiDialog>
    with AutomaticKeepAliveClientMixin {
  TextEditingController idController = TextEditingController();
  TextEditingController resCodeController = TextEditingController();
  TextEditingController resDateController = TextEditingController();
  TextEditingController resTimeController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  TextEditingController tableController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void initState() {
    super.initState();
    initializeControllers();
  }

  void initializeControllers() {
    idController =
        TextEditingController(text: widget.data?.id.toString() ?? '');
    resCodeController =
        TextEditingController(text: widget.data?.reservationCode ?? '');
    resDateController = TextEditingController(
        text: widget.data?.reservationDate != null
            ? widget.data!.reservationDate!.toIso8601String().split('T')[0]
            : '');
    resTimeController =
        TextEditingController(text: widget.data?.reservationTime ?? '');
    statusController =
        TextEditingController(text: widget.data?.status ?? 'pending');
    notesController = TextEditingController(text: widget.data?.notes ?? '');
    tableController =
        TextEditingController(text: widget.data?.tableNumber ?? '');
    nameController =
        TextEditingController(text: widget.data?.customerName ?? '');
    phoneController =
        TextEditingController(text: widget.data?.customerPhone ?? '');
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now().add(const Duration(days: 2));
    TimeOfDay time = TimeOfDay.now();

    TimeOfDay stringToTimeOfDay(String? timeString) {
      List<String> parts = timeString!.split(':');
      int hour = int.parse(parts[0]);
      int minute = int.parse(parts[1]);
      return TimeOfDay(hour: hour, minute: minute);
    }

    final initialTime = widget.data?.reservationTime != null
        ? stringToTimeOfDay(widget.data!.reservationTime)
        : time;

    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close),
          ),
          Text(widget.data == null ? 'Tambah Reservasi' : 'Edit Reservasi'),
          const Spacer(),
        ],
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: context.deviceWidth / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.data == null
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: CustomTextField(
                        controller: resCodeController,
                        label: 'Kode Reservasi',
                        readOnly: true,
                        onChanged: (value) {},
                      ),
                    ),
              const SpaceHeight(16.0),
              //   CustomDatePicker(

              //   prefix: const Text('Tanggal '),
              //   initialDate: widget.data?.reservationDate ?? date,
              //   onDateSelected: (selectedDate) {
              //     date = selectedDate;
              //     setState(() {
              //       date = selectedDate;
              //     });
              //   },
              // ),
              DateTextInputField(
                  controller: resDateController, labelText: 'Tanggal'),
              const SpaceHeight(16.0),
              CustomTimePicker(
                prefix: const Text('Jam '),
                initialTime: initialTime,
                onTimeSelected: (selectedTime) {
                  time = selectedTime;
                  setState(() {
                    time = selectedTime;
                  });
                },
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: nameController,
                label: 'Nama Pelanggan',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: phoneController,
                label: 'No. Telp Pelanggan',
                onChanged: (value) {},
                keyboardType: TextInputType.phone,
              ),
              const SpaceHeight(16.0),

              CustomDropdown(
                value: statusController.text,
                items: const [
                  'pending',
                  'confirmed',
                  'cancelled',
                  'seated',
                  'completed'
                ],
                label: 'Status',
                onChanged: (newValue) {
                  setState(() {
                    statusController.text = newValue ?? 'pending';
                  });
                },
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: notesController,
                label: 'Catatan',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: tableController,
                label: 'Nomor Meja',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              Button.filled(
                onPressed: () {
                  if (widget.data == null) {
                    // Tambahkan reservasi baru

                    print('Adding new reservation...');
                    print('Customer Name: ${nameController.text}');
                    print('Customer Phone: ${phoneController.text}');
                    print('Reservation Date: ${resDateController.text}');
                    print('Reservation Time: ${resTimeController.text}');
                    print('Status: ${statusController.text}');
                    print('Notes: ${notesController.text}');
                    print('Table Number: ${tableController.text}');
                    context.read<AddReservationBloc>().add(
                          AddReservationEvent.addReservation(
                            customerName: nameController.text,
                            customerPhone: phoneController.text,
                            reservationDate: resDateController.text,
                            reservationTime: time.format(context),
                            status: statusController.text,
                            notes: notesController.text,
                            tableNumber: tableController.text,
                          ),
                        );
                  } else {
                    // Perbarui reservasi
                    context.read<EditReservationBloc>().add(
                          EditReservationEvent.editReservation(
                            id: int.parse(idController
                                .text), // Gunakan ID reservasi yang sudah ada
                            customerName: nameController.text,
                            customerPhone: phoneController.text,
                            reservationDate: resDateController.text,
                            reservationTime: time.format(
                                context), // Ubah format waktu sesuai kebutuha
                            status: statusController.text,
                            notes: notesController.text,
                            tableNumber: tableController.text,
                          ),
                        );
                  }

                  context
                      .read<ReservationBloc>()
                      .add(const ReservationEvent.getReservations());
                  context
                      .pop(); // Tutup dialog setelah berhasil menyimpan/perbarui reservasi.
                },
                label: widget.data == null
                    ? 'Simpan Reservasi'
                    : 'Perbarui Reservasi',
              ),
              const SpaceHeight(10.0),
              widget.data != null
                  ? Button.filled(
                      onPressed: () {
                        String message =
                            'Reservasi: ${widget.data!.customerName}\n'
                            'Tanggal: ${widget.data!.reservationDate}\n'
                            'Waktu: ${widget.data!.reservationTime}\n'
                            'Meja: ${widget.data!.tableNumber}\n'
                            'Status: ${widget.data!.status}\n'
                            'Catatan: ${widget.data!.notes}';

                        Share.share(message);
                      },
                      label: 'Bagikan Reservasi',
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
