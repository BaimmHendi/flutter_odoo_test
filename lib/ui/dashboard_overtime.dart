import 'package:attendee/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/overtime_card_widget.dart';
import 'package:iconsax/iconsax.dart';
import '../widgets/overtime_request.dart';
import '../widgets/add_overtime.dart';

class DashboardOvertime extends StatefulWidget {
  const DashboardOvertime({super.key});

  @override
  State<DashboardOvertime> createState() => _DashboardOvertimeState();
}

class _DashboardOvertimeState extends State<DashboardOvertime> {
  String _currentStatus = 'Approved';

  // Data untuk status Approved
  final List<Map<String, String>> _approvedEntries = [
    {
      'date': 'Apr 15, 2024 - Apr 18, 2024',
      'status': 'Approved',
      'startTime': '10:10 PM',
      'endTime': '20:11 AM',
      'duration': '10hr 1min',
    },
    {
      'date': 'Apr 15, 2024 - Apr 18, 2024',
      'status': 'Approved',
      'startTime': '10:10 PM',
      'endTime': '20:11 AM',
      'duration': '10hr 1min',
    },
    {
      'date': 'Apr 15, 2024 - Apr 18, 2024',
      'status': 'Approved',
      'startTime': '10:10 PM',
      'endTime': '20:11 AM',
      'duration': '10hr 1min',
    },
    {
      'date': 'Apr 15, 2024 - Apr 18, 2024',
      'status': 'Approved',
      'startTime': '10:10 PM',
      'endTime': '20:11 AM',
      'duration': '10hr 1min',
    },
    {
      'date': 'Apr 15, 2024 - Apr 18, 2024',
      'status': 'Approved',
      'startTime': '10:10 PM',
      'endTime': '20:11 AM',
      'duration': '10hr 1min',
    },
    {
      'date': 'Apr 15, 2024 - Apr 18, 2024',
      'status': 'Approved',
      'startTime': '10:10 PM',
      'endTime': '20:11 AM',
      'duration': '10hr 1min',
    },
  ];

  // Data untuk status Pending
  final List<Map<String, String>> _pendingEntries = [
    {
      'date': 'Apr 20, 2024 - Apr 23, 2024',
      'status': 'Pending',
      'startTime': '09:00 PM',
      'endTime': '17:00 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 25, 2024 - Apr 27, 2024',
      'status': 'Pending',
      'startTime': '08:30 PM',
      'endTime': '16:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 25, 2024 - Apr 27, 2024',
      'status': 'Pending',
      'startTime': '08:30 PM',
      'endTime': '16:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 25, 2024 - Apr 27, 2024',
      'status': 'Pending',
      'startTime': '08:30 PM',
      'endTime': '16:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 25, 2024 - Apr 27, 2024',
      'status': 'Pending',
      'startTime': '08:30 PM',
      'endTime': '16:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 25, 2024 - Apr 27, 2024',
      'status': 'Pending',
      'startTime': '08:30 PM',
      'endTime': '16:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 25, 2024 - Apr 27, 2024',
      'status': 'Pending',
      'startTime': '08:30 PM',
      'endTime': '16:30 PM',
      'duration': '8hr 0min',
    },
  ];

  // Data untuk status Cancelled
  final List<Map<String, String>> _cancelledEntries = [
    {
      'date': 'Apr 22, 2024 - Apr 24, 2024',
      'status': 'Cancelled',
      'startTime': '08:00 PM',
      'endTime': '16:00 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 28, 2024 - Apr 30, 2024',
      'status': 'Cancelled',
      'startTime': '09:30 PM',
      'endTime': '17:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 28, 2024 - Apr 30, 2024',
      'status': 'Cancelled',
      'startTime': '09:30 PM',
      'endTime': '17:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 28, 2024 - Apr 30, 2024',
      'status': 'Cancelled',
      'startTime': '09:30 PM',
      'endTime': '17:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 28, 2024 - Apr 30, 2024',
      'status': 'Cancelled',
      'startTime': '09:30 PM',
      'endTime': '17:30 PM',
      'duration': '8hr 0min',
    },
    {
      'date': 'Apr 28, 2024 - Apr 30, 2024',
      'status': 'Cancelled',
      'startTime': '09:30 PM',
      'endTime': '17:30 PM',
      'duration': '8hr 0min',
    },
  ];

  List<Map<String, String>> _getCurrentEntries() {
    switch (_currentStatus) {
      case 'Approved':
        return _approvedEntries;
      case 'Pending':
        return _pendingEntries;
      case 'Cancelled':
        return _cancelledEntries;
      default:
        return [];
    }
  }

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
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Overtime',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Iconsax.add_square),
                      color: AppColors().overtimeIconColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddOvertime()),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Iconsax.setting_4),
                      color: AppColors().overtimeIconColor,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildSearchBar(),
          _buildTabs(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: _getCurrentEntries().length,
              itemBuilder: (context, index) {
                return OvertimeCard(entry: _getCurrentEntries()[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey[400]),
          suffixIcon: Icon(Iconsax.search_normal_1, color: Colors.grey[400]),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() => _currentStatus = 'Approved');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _currentStatus == 'Approved'
                    ? Colors.blue
                    : Colors.grey[200],
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Approved',
                style: TextStyle(
                  fontSize: 16,
                  color: _currentStatus == 'Approved'
                      ? Colors.white
                      : Colors.grey[800],
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() => _currentStatus = 'Pending');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _currentStatus == 'Pending'
                    ? Colors.blue
                    : Colors.grey[200],
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Pending',
                style: TextStyle(
                  fontSize: 16,
                  color: _currentStatus == 'Pending'
                      ? Colors.white
                      : Colors.grey[800],
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() => _currentStatus = 'Cancelled');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _currentStatus == 'Cancelled'
                    ? Colors.blue
                    : Colors.grey[200],
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Cancelled',
                style: TextStyle(
                  fontSize: 16,
                  color: _currentStatus == 'Cancelled'
                      ? Colors.white
                      : Colors.grey[800],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
