import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/components/custom_text_field.dart';
import 'package:flutter_cafe/core/extensions/build_context_ext.dart';
import 'package:flutter_cafe/data/models/response/discount_response_model.dart';
import 'package:flutter_cafe/presentations/setting/bloc/add_discount/add_discount_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/discount/discount_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/edit_discount/edit_discount_bloc.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../models/discount_model.dart';

class FormDiscountDialog extends StatefulWidget {
  final Discount? data;
  const FormDiscountDialog({super.key, this.data});

  @override
  State<FormDiscountDialog> createState() => _FormDiscountDialogState();
}

class _FormDiscountDialogState extends State<FormDiscountDialog> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: widget.data?.name ?? '');
    final descriptionController =
        TextEditingController(text: widget.data?.description ?? '');
    final discountController =
        TextEditingController(text: widget.data?.value ?? '');

    final idController =
        TextEditingController(text: widget.data?.id.toString() ?? '');

    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close),
          ),
          Text(widget.data == null ? 'Tambah Diskon' : 'Edit Diskon'),
          const Spacer(),
        ],
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: context.deviceWidth / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                controller: nameController,
                label: 'Nama Diskon',
                onChanged: (value) {},
              ),
              const SpaceHeight(24.0),
              CustomTextField(
                controller: descriptionController,
                label: 'Deskripsi (Opsional)',
                onChanged: (value) {},
              ),
              const SpaceHeight(24.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: CustomTextField(
                      controller: TextEditingController(text: 'Presentase'),
                      label: 'Nilai',
                      suffixIcon: const Icon(Icons.chevron_right),
                      onChanged: (value) {},
                      readOnly: true,
                    ),
                  ),
                  const SpaceWidth(14.0),
                  Flexible(
                    child: CustomTextField(
                      showLabel: false,
                      controller: discountController,
                      label: 'Percent',
                      prefixIcon: const Icon(Icons.percent),
                      onChanged: (value) {},
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SpaceHeight(24.0),
              Button.filled(
                onPressed: () {
                  widget.data == null
                      ? context.read<AddDiscountBloc>().add(
                            AddDiscountEvent.addDiscount(
                              name: nameController.text,
                              description: descriptionController.text,
                              value: int.parse(discountController.text),
                            ),
                          )
                      : context.read<EditDiscountBloc>().add(
                          EditDiscountEvent.editDiscount(
                              id: int.parse(idController.text),
                              name: nameController.text,
                              description: descriptionController.text,
                              value: int.parse(discountController.text)));
                  context
                      .read<DiscountBloc>()
                      .add(const DiscountEvent.getDiscounts());

                  context.pop();
                },
                label:
                    widget.data == null ? 'Simpan Diskon' : 'Perbarui Diskon',
              )
            ],
          ),
        ),
      ),
    );
  }
}
