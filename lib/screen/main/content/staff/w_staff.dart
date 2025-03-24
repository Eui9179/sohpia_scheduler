import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/screen/main/content/f_content.dart';
import 'package:sophia_scheduler/screen/main/content/staff/w_position_circle.dart';

class StaffWidget extends StatelessWidget {
  const StaffWidget({super.key, required this.staffData});

  final StaffData staffData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      width: 140,
      height: ContentFrame.rowHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    staffData.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4),
                  Text(staffData.serialNumber, style: TextStyle(fontSize: 10)),
                ],
              ),
              PositionCircleWidget(staffPosition: staffData.staffPosition),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 1),
              Text(
                staffData.staffPosition.position,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
