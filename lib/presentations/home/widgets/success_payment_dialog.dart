import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/components/buttons.dart';
import 'package:flutter_cafe/core/components/spaces.dart';
import 'package:flutter_cafe/core/extensions/build_context_ext.dart';
import 'package:flutter_cafe/core/extensions/int_ext.dart';
import 'package:flutter_cafe/data/dataoutputs/print_dataoutputs.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';
import 'package:flutter_cafe/presentations/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_cafe/presentations/home/bloc/order/order_bloc.dart';
import 'package:flutter_cafe/presentations/home/models/product_quantity.dart';
import 'package:intl/intl.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';
import '../models/order_item.dart';

class SuccessPaymentDialog extends StatefulWidget {
  const SuccessPaymentDialog(
      {super.key,
      required this.data,
      required this.totalQty,
      required this.totalPrice,
      required this.totalTax,
      required this.totalDiscount,
      required this.subTotal,
      required this.normalPrice});

  final List<ProductQuantity> data;
  final int totalQty;
  final int totalPrice;
  final int totalTax;
  final int totalDiscount;
  final int subTotal;
  final int normalPrice;

  @override
  State<SuccessPaymentDialog> createState() => _SuccessPaymentDialogState();
}

class _SuccessPaymentDialogState extends State<SuccessPaymentDialog> {
  // List<ProductQuantity> data = [];
  // int totalQty = 0;
  // int totalPrice = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.icons.success.svg()),
            const SpaceHeight(16.0),
            const Center(
              child: Text(
                'Pembayaran telah sukses dilakukan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SpaceHeight(20.0),
            const Text('METODE BAYAR'),
            const SpaceHeight(5.0),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                final paymentMethod = state.maybeWhen(
                    orElse: () => 'Cash',
                    loaded: (model) => model.paymentMethod);
                return Text(
                  paymentMethod,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                );
              },
            ),
            const SpaceHeight(10.0),
            const Divider(),
            const SpaceHeight(8.0),
            const Text('TOTAL TAGIHAN'),
            const SpaceHeight(5.0),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                final discount = state.maybeWhen(
                    orElse: () => 0, loaded: (model) => model.discount);
                final price = state.maybeWhen(
                    orElse: () => 0, loaded: (model) => model.subTotal);

                var subTotal = price - discount;

                final tax = subTotal * 0.11;
                final totalTagihan = subTotal + tax;

                return Text(
                  totalTagihan.ceil().currencyFormatRp,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                );
              },
            ),
            const SpaceHeight(10.0),
            const Divider(),
            const SpaceHeight(8.0),
            const Text('NOMINAL BAYAR'),
            const SpaceHeight(5.0),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                final paymentAmount = state.maybeWhen(
                    orElse: () => 0, loaded: (model) => model.paymentAmount);
                return Text(
                  paymentAmount.ceil().currencyFormatRp,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                );
              },
            ),
            const SpaceHeight(10.0),
            const Divider(),
            const Text('UANG KEMBALI'),
            const SpaceHeight(5.0),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                final paymentAmount = state.maybeWhen(
                  orElse: () => 0,
                  loaded: (model) => model.paymentAmount,
                );

                final discount = state.maybeWhen(
                    orElse: () => 0, loaded: (model) => model.discount);
                final price = state.maybeWhen(
                    orElse: () => 0, loaded: (model) => model.subTotal);

                var subTotal = price - discount;

                final tax = subTotal * 0.11;
                final totalTagihan = subTotal + tax;

                final diff = paymentAmount - totalTagihan;
                return Text(
                  diff.ceil().currencyFormatRp,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                );
              },
            ),
            const SpaceHeight(10.0),
            const Divider(),
            const SpaceHeight(8.0),
            const Text('WAKTU PEMBAYARAN'),
            const SpaceHeight(5.0),
            Text(DateFormat('dd MMMM yyyy, HH:mm').format(DateTime.now())),
            const SpaceHeight(20.0),
            Row(
              children: [
                Flexible(
                  child: Button.outlined(
                    onPressed: () {
                      context
                          .read<CheckoutBloc>()
                          .add(const CheckoutEvent.started());
                      context.popToRoot();
                    },
                    label: 'Kembali',
                  ),
                ),
                const SpaceWidth(8.0),
                Flexible(
                  child: Button.filled(
                    onPressed: () async {
                      final printValue = await PrintDataoutputs.instance
                          .printOrder(
                              widget.data,
                              widget.totalQty,
                              widget.totalPrice,
                              'Tunai',
                              widget.totalPrice,
                              'Bahri',
                              widget.totalDiscount,
                              widget.totalTax,
                              widget.subTotal,
                              widget.normalPrice);
                      await PrintBluetoothThermal.writeBytes(printValue);
                    },
                    label: 'Print',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
