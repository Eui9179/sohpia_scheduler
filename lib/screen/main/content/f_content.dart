import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/date_info.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/data/staff_position.dart';
import 'package:sophia_scheduler/screen/main/content/schedule/f_schedule.dart';
import 'package:sophia_scheduler/screen/main/content/schedule/w_sub_title.dart';
import 'package:sophia_scheduler/screen/main/content/staff/f_staff_list.dart';

class ContentFrame extends StatelessWidget {
  const ContentFrame({super.key});

  static double rowHeight = 64;
  static double dateHeader = 20;

  @override
  Widget build(BuildContext context) {

    List<StaffData> staffs = [
      StaffData("이소은", "sophia", "000000", StaffPosition.DOFB, 30, 8),
      StaffData("이의찬", "leui", "000000", StaffPosition.TEAM_MEMBER1, 30, 8),
      StaffData("이다은", "daeun", "000000", StaffPosition.TEAM_MEMBER2, 30, 8),
      StaffData("이준범", "junbum", "000000", StaffPosition.TEAM_LEADER, 30, 8),
    ];

    Map<String, List<String>> schedules = {
      staffs[0].name: ["C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N"],
      staffs[1].name: ["C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N"],
      staffs[2].name: ["C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N"],
      staffs[3].name: ["C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N", "F", "N", "C", "F", "N"],
    };

    List<DateInfo> dateInfos = [];
    int year = 2025;
    int month = 4;
    int lastDay = DateTime(year, month, 0).day;
    for (int day = 1; day <= lastDay; day++) {
      DateTime date = DateTime(year, month, day);
      String weekday = _getWeekdayName(date.weekday);
      if (weekday == "Sat") {
        dateInfos.add(DateInfo(day.toString(), weekday, Colors.indigoAccent, Color.fromRGBO(213, 219, 255, 100)));
      } else if (weekday == "Sun") {
        dateInfos.add(DateInfo(day.toString(), weekday, Colors.redAccent, Color.fromRGBO(255, 205, 205, 100)));
      } else {
        dateInfos.add(DateInfo(day.toString(), weekday, Colors.black, Colors.white));
      }
    }

    List<int> bk = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5];
    List<int> dnIrd = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5];

    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SubTitleWidget(title: "BK"),
                  SubTitleWidget(title: "DN + IRD"),
                  SubTitleWidget(title: "Day"),
                  StaffListFrame(staffs: staffs),
                ],
              ),
              ScheduleFrame(staffs: staffs, schedules: schedules, dateInfos: dateInfos, bk: bk, dnIrd: dnIrd),
            ],
          ),
        ),
      ),
    );
  }

  String _getWeekdayName(int weekday) {
    const weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return weekdays[weekday - 1];
  }
}
