import 'package:flutter/material.dart';
import 'package:flutter_cafe/core/constants/colors.dart';

class CustomTimePicker extends StatefulWidget {
  final void Function(TimeOfDay selectedTime)? onTimeSelected;
  final TimeOfDay initialTime;
  final Widget? prefix;

  const CustomTimePicker({
    Key? key,
    required this.initialTime,
    this.onTimeSelected,
    this.prefix,
  }) : super(key: key);

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  late TimeOfDay selectedTime;

  @override
  void initState() {
    selectedTime = widget.initialTime;
    super.initState();
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
      if (widget.onTimeSelected != null) {
        widget.onTimeSelected!(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () => _selectTime(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    readOnly: true,
                    controller: TextEditingController(
                      text: selectedTime.format(context),
                    ),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.access_time,
                        color: AppColors.primary,
                      ),
                      prefix: widget.prefix,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
