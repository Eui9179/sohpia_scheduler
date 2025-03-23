import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_data.dart';

class StaffWidget extends StatelessWidget {
  const StaffWidget({
    super.key,
    required this.staffData,
  });

  final StaffData staffData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(staffData.name),
    );
  }
}
