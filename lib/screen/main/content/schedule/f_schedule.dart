import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/screen/main/content/f_content.dart';

class ScheduleFrame extends StatefulWidget {
  const ScheduleFrame({
    super.key,
    required this.schedules,
    required this.staffs,
  });

  final List<StaffData> staffs;
  final Map<String, List<String>> schedules;

  @override
  State<ScheduleFrame> createState() => _ScheduleFrameState();
}

class _ScheduleFrameState extends State<ScheduleFrame> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Table(
          border: TableBorder(
            bottom: BorderSide(width: 0.5, color: Colors.black),
            right: BorderSide(width: 0.5, color: Colors.black),
            horizontalInside: BorderSide(width: 0.3, color: Colors.black), // 내부 가로선
            verticalInside: BorderSide(width: 0.3, color: Colors.black), // 내부 세로선
          ),
          columnWidths: {
            for (var index in List.generate(
              widget.schedules.values.first.length,
              (index) => index,
            ))
              index: FixedColumnWidth(ContentFrame.rowHeight),
          },
          children:
              widget.staffs.map((staff) {
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
              }).toList(),
        ),
      ),
    );
  }
}
