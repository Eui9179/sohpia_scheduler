import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/date_info.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/screen/main/content/f_content.dart';

class ScheduleTableFrame extends StatefulWidget {
  const ScheduleTableFrame({
    super.key,
    required this.schedules,
    required this.staffs,
    required this.dateInfos
  });

  final List<StaffData> staffs;
  final Map<String, List<String>> schedules;
  final List<DateInfo> dateInfos;

  @override
  State<ScheduleTableFrame> createState() => _ScheduleTableFrameState();
}

class _ScheduleTableFrameState extends State<ScheduleTableFrame> {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.black87),
      columnWidths: {
        for (var index in List.generate(
          widget.schedules.values.first.length,
          (index) => index,
        ))
          index: FixedColumnWidth(ContentFrame.rowHeight),
      },
      children: [
        ...widget.staffs.map((staff) {
          return TableRow(
            children:
                widget.schedules[staff.name]!.map((schedule) {
                  return Container(
                    width: ContentFrame.rowHeight,
                    height: ContentFrame.rowHeight,
                    alignment: Alignment.center,
                    child: Text(schedule),
                  );
                }).toList(),
          );
        }),
      ],
    );
  }
}
