import 'package:flutter/material.dart';
import 'package:sophia_scheduler/screen/main/content/f_content.dart';

class ScheduleFrame extends StatefulWidget {
  const ScheduleFrame({super.key, required this.schedules});

  final List<String> schedules;

  @override
  State<ScheduleFrame> createState() => _ScheduleFrameState();
}

class _ScheduleFrameState extends State<ScheduleFrame> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: widget.schedules.map((schedule) => Container(
          height: ContentFrame.rowHeight,
          width: ContentFrame.rowHeight,
          // decoration: BoxDecoration(border: Border.(color: Colors.black)),
          padding: EdgeInsets.all(0),
          alignment: Alignment.center,
          child: Text("Cell $schedule"),
        )).toList());
  }
}
