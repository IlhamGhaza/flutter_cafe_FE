import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/core/extensions/date_time_ext.dart';
import 'package:flutter_cafe/presentations/report/bloc/report/transaction_report_bloc.dart';
import 'package:flutter_cafe/presentations/report/widgets/item_sales_report.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  DateTime fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime toDate = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState

    context.read<TransactionReportBloc>().add(
        TransactionReportEvent.getReport(startDate: fromDate, endDate: toDate));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const Text(
                  'Riwayat Transaksi',
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
                BlocBuilder<TransactionReportBloc, TransactionReportState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const Center(child: CircularProgressIndicator());
                      },
                      loaded: (orders) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              dividerThickness: 0.1,
                              dataRowColor: MaterialStateColor.resolveWith(
                                  (states) => Colors
                                      .white), // Warna latar belakang baris data
                              headingRowColor: MaterialStateColor.resolveWith(
                                  (states) =>
                                      AppColors.primary.withOpacity(0.1)),
                              headingTextStyle: const TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold),

                              columns: const [
                                DataColumn(label: Text('No.')),
                                DataColumn(label: Text('Waktu Transaksi')),
                                DataColumn(label: Text('Total Item')),
                                DataColumn(label: Text('Diskon')),
                                DataColumn(label: Text('Pajak')),
                                DataColumn(label: Text('Sub Total')),
                                DataColumn(
                                    label: Text(
                                  'Total Bayar',
                                )),
                                DataColumn(label: Text('Nama Kasir')),
                              ],
                              rows: orders.map((order) {
                                final formattedTime =
                                    DateFormat('dd-MM-yyyy HH:mm:ss').format(
                                        DateTime.parse(order.transactionTime));

                                return DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        order.id.toString(),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        formattedTime,
                                      ),
                                    ),
                                    DataCell(
                                      Text(order.totalItem.toString()),
                                    ),
                                    DataCell(
                                      Text(order.discount.toString()),
                                    ),
                                    DataCell(
                                      Text(order.tax.toString()),
                                    ),
                                    DataCell(
                                      Text(order.subTotal.toString()),
                                    ),
                                    DataCell(
                                      Text(
                                        order.paymentAmount.toString(),
                                        style: const TextStyle(
                                            color: AppColors.primary),
                                      ),
                                    ),
                                    DataCell(
                                      Text(order.namaKasir.toString()),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
