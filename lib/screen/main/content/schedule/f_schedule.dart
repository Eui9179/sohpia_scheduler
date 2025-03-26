import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/date_info.dart';
import 'package:sophia_scheduler/data/staff_data.dart';

import 'f_bk_dn_ird.dart';
import 'f_date_info.dart';
import 'f_schedule_table.dart';

class ScheduleFrame extends StatefulWidget {
  const ScheduleFrame({
    super.key,
    required this.schedules,
    required this.staffs,
    required this.dateInfos,
    required this.bk,
    required this.dnIrd,
  });

  final List<StaffData> staffs;
  final Map<String, List<String>> schedules;
  final List<DateInfo> dateInfos;
  final List<int> bk;
  final List<int> dnIrd;

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
            BkDnIrdFrame(
              dateInfos: widget.dateInfos,
              bk: widget.bk,
              dnIrd: widget.dnIrd,
            ),
            DateInfoFrame(dateInfos: widget.dateInfos),
            ScheduleTableFrame(
              schedules: widget.schedules,
              staffs: widget.staffs,
              dateInfos: widget.dateInfos,
            ),
          ],
        ),
      ),
    );
  }
}
