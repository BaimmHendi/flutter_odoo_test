import 'package:attendee/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class AddOvertime extends StatefulWidget {
  const AddOvertime({super.key});

  @override
  State<AddOvertime> createState() => _AddOvertimeState();
}

class _AddOvertimeState extends State<AddOvertime> {
  final TextEditingController _detailController = TextEditingController();
  DateTime? _selectedDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;
  String? _selectedEmployee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).viewPadding.top,
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Iconsax.arrow_left_2),
                    color: AppColors().overtimeIconColor,
                    onPressed: () => Navigator.pop(context),
                  ),
                  Center(
                    child: Text(
                      'Overtime Request',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
