import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/screen/main/content/staff/w_position_circle.dart';

class StaffWidget extends StatelessWidget {
  const StaffWidget({super.key, required this.staffData});

  final StaffData staffData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: 180,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(staffData.name, style: TextStyle(fontSize: 20)),
              Text(staffData.engName, style: TextStyle(fontSize: 12)),
              PositionCircleWidget(staffPosition: staffData.staffPosition),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                staffData.staffPosition.position,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 6,),
              Text(staffData.serialNumber, style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
