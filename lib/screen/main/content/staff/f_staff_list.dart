import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_position.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/screen/main/content/staff/w_staff.dart';

class StaffListFrame extends StatelessWidget {
  const StaffListFrame({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaffData> staffs = [
      StaffData("이소은", "sophia", "000000", StaffPosition.DOFB, 30, 8),
      StaffData("이의찬", "leui", "000000", StaffPosition.TEAM_MEMBER1, 30, 8),
      StaffData("이다은", "daeun", "000000", StaffPosition.TEAM_MEMBER2, 30, 8),
      StaffData("이준범", "junbum", "000000", StaffPosition.TEAM_LEADER, 30, 8),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: staffs.map((staff) => StaffWidget(staffData: staff)).toList(),
    );
  }
}
