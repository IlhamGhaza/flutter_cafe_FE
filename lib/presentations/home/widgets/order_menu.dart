import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/constants/variables.dart';
import 'package:flutter_cafe/core/extensions/int_ext.dart';
import 'package:flutter_cafe/presentations/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_cafe/presentations/home/models/order_item.dart';
import 'package:flutter_cafe/presentations/home/models/product_quantity.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../models/product_model.dart';

class OrderMenu extends StatelessWidget {
  final ProductQuantity data;
  const OrderMenu({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // final qtyController = TextEditingController(text: '3');

    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  child: Image.network(
                    data.product.image!.contains('http')
                        ? data.product.image!
                        : '${Variables.baseUrl}/storage/products/${data.product.image}',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(data.product.name!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
                subtitle: Text(data.product.price!.currencyFormatRp),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<CheckoutBloc>()
                        .add(CheckoutEvent.removeItem(data.product));
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.transparent,
                    child: const Icon(
                      Icons.remove_circle,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                  child: Center(
                      child: Text(
                    data.quantity.toString(),
                  )),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<CheckoutBloc>()
                        .add(CheckoutEvent.addItem(data.product));
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.transparent,
                    child: const Icon(
                      Icons.add_circle,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SpaceWidth(8),
            SizedBox(
              width: 80.0,
              child: Text(
                (data.product.price! * data.quantity).currencyFormatRp,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: AppColors.charchoal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SpaceHeight(16),
      ],
    );
  }
}
