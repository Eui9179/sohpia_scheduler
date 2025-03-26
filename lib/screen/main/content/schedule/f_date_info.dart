import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/date_info.dart';
import 'package:sophia_scheduler/screen/main/content/f_content.dart';

class DateInfoFrame extends StatelessWidget {
  const DateInfoFrame({super.key, required this.dateInfos});

  final List<DateInfo> dateInfos;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...dateInfos.map(
              (dateInfo) => Container(
            height: ContentFrame.dateHeader,
            width: ContentFrame.rowHeight,
            alignment: Alignment.center,
            child: Text(
              "${dateInfo.day} ${dateInfo.weekDay}",
              style: TextStyle(color: dateInfo.textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
