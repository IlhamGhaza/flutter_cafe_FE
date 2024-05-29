import 'package:flutter/material.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';

class DateTextInputField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final void Function(DateTime selectedDate)? onDateSelected;

  const DateTextInputField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.onDateSelected,
  }) : super(key: key);

  @override
  _DateTextInputFieldState createState() => _DateTextInputFieldState();
}

class _DateTextInputFieldState extends State<DateTextInputField> {
  late DateTime selectedDate;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        // Simpan data saat focus hilang
        widget.controller.text = selectedDate.toString().split(' ')[0];
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Hapus focus node saat widget dihapus
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      widget.controller.text = selectedDate.toString().split(' ')[0];
      if (widget.onDateSelected != null) {
        widget.onDateSelected!(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.requestFocus(); // Fokus pada text field saat di tap
        _selectDate(context); // Tampilkan date picker
      },
      child: AbsorbPointer(
        child: TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          style: const TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ), // Gunakan focus node yang telah dibuat
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Assets.icons.calendar.svg(),
            ),
            prefix: const Text('Tanggal: '),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(color: AppColors.primary),
              // Ubah warna border saat aktif
            ),
          ),
          readOnly: true,
        ),
      ),
    );
  }
}
