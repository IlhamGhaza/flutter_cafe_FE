import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/extensions/build_context_ext.dart';
import 'package:flutter_cafe/presentations/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_cafe/presentations/home/models/product_quantity.dart';

import '../../../core/constants/colors.dart';

class RemoveProductDialog extends StatefulWidget {
  final ProductQuantity data;

  const RemoveProductDialog({super.key, required this.data});

  @override
  State<RemoveProductDialog> createState() => _DiscountDialogState();
}

class _DiscountDialogState extends State<RemoveProductDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Stack(
          alignment: Alignment.center,
          children: [
            const Text(
              'Hapus',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.cancel,
                  color: AppColors.primary,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
        content: Text(
          'Apakah Anda yakin ingin menghapus ${widget.data.product.name}?',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop(); // Tutup dialog
            },
            child: Text('Batal', style: TextStyle(color: AppColors.primary)),
          ),
          ElevatedButton(
            onPressed: () {
              context
                  .read<CheckoutBloc>()
                  .add(CheckoutEvent.removeItem(widget.data.product));
              context.pop(); // Tutup dialog setelah menghapus
            },
            child: Text('Hapus', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
          ),
        ]);
  }
}
