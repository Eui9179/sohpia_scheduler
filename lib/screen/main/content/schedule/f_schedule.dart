import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/date_info.dart';
import 'package:sophia_scheduler/data/staff_data.dart';

import 'f_date_info.dart';
import 'f_schedule_table.dart';

class ScheduleFrame extends StatefulWidget {
  const ScheduleFrame({
    super.key,
    required this.schedules,
    required this.staffs,
    required this.dateInfos,
  });

  final List<StaffData> staffs;
  final Map<String, List<String>> schedules;
  final List<DateInfo> dateInfos;

  @override
  State<ScheduleFrame> createState() => _ScheduleFrameState();
}

class _ScheduleFrameState extends State<ScheduleFrame> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DateInfoFrame(dateInfos: widget.dateInfos),
            ScheduleTableFrame(
              schedules: widget.schedules,
              staffs: widget.staffs,
            ),
          ],
        ),
      ),
    );
  }
}
