import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/data/staff_position.dart';
import 'package:sophia_scheduler/screen/main/content/schedule/f_schedule.dart';
import 'package:sophia_scheduler/screen/main/content/staff/f_staff_list.dart';

class ContentFrame extends StatelessWidget {
  const ContentFrame({super.key});

  static double rowHeight = 64;

  @override
  Widget build(BuildContext context) {

    List<StaffData> staffs = [
      StaffData("이소은", "sophia", "000000", StaffPosition.DOFB, 30, 8),
      StaffData("이의찬", "leui", "000000", StaffPosition.TEAM_MEMBER1, 30, 8),
      StaffData("이의찬", "leui", "000000", StaffPosition.TEAM_MEMBER1, 30, 8),
      StaffData("이의찬", "leui", "000000", StaffPosition.TEAM_MEMBER1, 30, 8),
      StaffData("이다은", "daeun", "000000", StaffPosition.TEAM_MEMBER2, 30, 8),
      StaffData("이준범", "junbum", "000000", StaffPosition.TEAM_LEADER, 30, 8),
    ];

    Map<String, List<String>> schedules = {
      staffs[0].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N", "F", "N","C", "F", "N", "F", "N","C", "F", "N"],
      staffs[1].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N", "F", "N","C", "F", "N", "F", "N","C", "F", "N"],
      staffs[2].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N", "F", "N","C", "F", "N", "F", "N","C", "F", "N"],
      staffs[3].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N", "F", "N","C", "F", "N", "F", "N","C", "F", "N"],
      staffs[4].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N", "F", "N","C", "F", "N", "F", "N","C", "F", "N"],
      staffs[5].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N", "F", "N","C", "F", "N", "F", "N","C", "F", "N"],
    };

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StaffListFrame(staffs: staffs),
        SizedBox(
          width: 0.5,
          height: rowHeight * staffs.length,
          child: VerticalDivider(
            color: Colors.black,
            thickness: 0.5,
          ),
        ),
        ScheduleFrame(staffs: staffs, schedules: schedules),
      ],
    );
  }
}
