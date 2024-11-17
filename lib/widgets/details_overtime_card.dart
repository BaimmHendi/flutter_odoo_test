import 'package:attendee/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailsOvertimeCard extends StatelessWidget {
  final String name;
  final String role;
  final String date;
  final String startTime;
  final String endTime;
  final String project;
  final String task;
  final String duration;
  final String status;

  const DetailsOvertimeCard({
    Key? key,
    required this.name,
    required this.role,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.project,
    required this.task,
    required this.duration,
    required this.status,
  }) : super(key: key);

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
              children: [
                IconButton(
                  icon: const Icon(Iconsax.arrow_left_2),
                  color: AppColors().overtimeIconColor,
                  onPressed: () => Navigator.pop(context),
                ),
                Expanded(
                  child: Text(
                    'Detail Overtime',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 48),
              ],
            ),
          ),
          const SizedBox(height: 48),
          // Profile section
          const CircleAvatar(
            radius: 40,
            backgroundColor: Color(0xFFF5F5F5),
            child: Icon(Icons.person_outline, size: 40, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          const Text(
            'Jane Hawkins',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Fullstack Developer',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: _getStatusColor().withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              _getStatusText().toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                color: _getStatusColor(),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 32),
          // Time section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTimeWidget('Start Time', '10:02 am', Iconsax.login),
                const SizedBox(width: 40),
                _buildTimeWidget('End Time', '20:20 pm', Iconsax.logout),
              ],
            ),
          ),
          const SizedBox(height: 32),
          // Details section
          _buildDetailRow('Project', 'Dev Mobile'),
          _buildDetailRow('Task', 'Development'),
          _buildDetailRow('Date', '24 November 2024'),
          _buildDetailRow('Duration', '10 hr 1 min'),
        ],
      ),
    );
  }

  Widget _buildTimeWidget(String label, String time, IconData icon) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.blue),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              time,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 21,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    // You can add more status colors as needed
    switch (status) {
      case 'approved':
        return Colors.green;
      case 'canceled':
        return Colors.red;
      case 'pending':
        return Colors.orange;
      default:
        return Colors
            .blue; // This line ensures that any other status will default to blue
    }
  }

  String _getStatusText() {
    // You can customize the display text for each status
    switch (status) {
      case 'approved':
        return 'Approved';
      case 'canceled':
        return 'Canceled';
      case 'pending':
        return 'Pending';
      default:
        return status; // This line ensures that any other status will display as is
    }
  }
}
