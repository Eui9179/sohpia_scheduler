import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/data/staff_position.dart';
import 'package:sophia_scheduler/screen/main/content/schedule/f_schedule.dart';
import 'package:sophia_scheduler/screen/main/content/staff/f_staff_list.dart';
import 'package:sophia_scheduler/screen/main/content/staff/w_staff.dart';

class ContentFrame extends StatelessWidget {
  const ContentFrame({super.key});

  static double rowHeight = 64;

  @override
  Widget build(BuildContext context) {
    List<StaffData> staffs = [
      StaffData("이소은", "sophia", "000000", StaffPosition.DOFB, 30, 8),
      StaffData("이의찬", "leui", "000000", StaffPosition.TEAM_MEMBER1, 30, 8),
      StaffData("이다은", "daeun", "000000", StaffPosition.TEAM_MEMBER2, 30, 8),
      StaffData("이준범", "junbum", "000000", StaffPosition.TEAM_LEADER, 30, 8),
    ];

    Map<String, List<String>> schedules = {
      staffs[0].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C"],
      staffs[1].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C"],
      staffs[2].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C"],
      staffs[3].name: ["C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C", "F", "N","C"],
    };

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
          staffs
              .map(
                (staff) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            StaffWidget(staffData: staff),
                            SizedBox(
                              width: 140,
                              height: 1,
                              child: Divider(
                                color: Colors.black38,
                                thickness: 1.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                          height: rowHeight,
                          child: VerticalDivider(
                            color: Colors.black38,
                            thickness: 1.0,
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ScheduleFrame(schedules: schedules[staff.name]!),
                                SizedBox(
                                  width: rowHeight * 31,
                                  height: 1,
                                  child: Divider(
                                    color: Colors.black38,
                                    thickness: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
              .toList(),
    );
  }
}
