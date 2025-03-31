import 'dart:math';

import 'package:intl/intl.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/data/staff_position.dart';

void main() {
  List<StaffData> staffs = [
    // StaffData("윤혁상", "David", "000000", StaffPosition.DOFB, 22, 8),
    StaffData("김한철", "Aiden", "000000", StaffPosition.MGR, 22, 8),
    StaffData("이소은", "sophia", "000000", StaffPosition.ASST_MGR, 22, 8),
    StaffData("박연준", "Roy", "000000", StaffPosition.TEAM_LEADER, 22, 8),
    StaffData("성근모", "Denzel", "000000", StaffPosition.TEAM_LEADER, 22, 8),
    StaffData("이채림", "Selene", "000000", StaffPosition.TEAM_LEADER, 22, 8),
    StaffData("박진희", "Olivia", "000000", StaffPosition.TEAM_LEADER, 22, 8),
    StaffData("김해진", "Sally", "000000", StaffPosition.TEAM_MEMBER1, 22, 8),
    StaffData("정승환", "Kenji", "000000", StaffPosition.TEAM_MEMBER1, 22, 8),
    StaffData("윤희수", "Lia", "000000", StaffPosition.TEAM_MEMBER1, 22, 8),
    StaffData("임형준", "Andrew", "000000", StaffPosition.TEAM_MEMBER2, 22, 8),
    StaffData("김현아", "Luna", "000000", StaffPosition.TEAM_MEMBER2, 22, 8),
    StaffData("신정인", "Jinny", "000000", StaffPosition.TEAM_MEMBER2, 22, 8),
    StaffData("김연규", "Leo", "000000", StaffPosition.TEAM_MEMBER2, 22, 8),
    StaffData("김민서", "Grace", "000000", StaffPosition.TEAM_MEMBER2, 22, 8),
  ];

  Map<StaffData, String> lastShift = {};

  DateTime startDate = DateTime(2025, 4, 1);
  DateTime endDate = DateTime(2025, 4, 30);
  Random random = Random();

  Map<String, List<int>> workforce = {
    'Monday': [5, 5],
    'Tuesday': [5, 5],
    'Wednesday': [5, 5],
    'Thursday': [5, 5],
    'Friday': [5, 4],
    'Saturday': [6, 8],
    'Sunday': [9, 6],
  };

  Map<String, Map<String, List<StaffData>>> schedule = {};

  for (
    var date = startDate;
    date.isBefore(endDate.add(Duration(days: 1)));
    date = date.add(Duration(days: 1))
  ) {
    String weekday = DateFormat.EEEE().format(date);
    List<int> counts = workforce[weekday]!;
    List<StaffData> available = List.from(staffs);

    // 근무 일 없는 사람 필터링
    available.removeWhere((s) => s.workCount == 0);

    available.removeWhere((s) => lastShift[s] == 'J');
    // 오후 근무 인원
    available.shuffle(random);
    List<StaffData> afternoonShift = available.take(counts[1]).toList();

    // TODO 인원 수 부족으로 최대 못 뽑고 있음.
    // 오전 근무 인원
    // 이전 날 오후 근무 시 오전 근무 제외
    available.removeWhere((s) => afternoonShift.contains(s));
    available.shuffle(random);
    List<StaffData> morningShift = available.take(counts[0]).toList();

    List<StaffData> offShift =
        staffs
            .where(
              (s) =>
                  !morningShift.contains(s) &&
                  !afternoonShift.contains(s) &&
                  s.offCount != 0,
            )
            .toList();

    for (StaffData s in staffs) {
      if (morningShift.contains(s) || afternoonShift.contains(s)) {
        s.subWorkCount();
      } else {
        s.subOffCount();
      }
      lastShift[s] =
          offShift.contains(s) ? 'OFF' : (morningShift.contains(s) ? 'C' : 'J');
    }

    schedule[DateFormat('yyyy-MM-dd').format(date)] = {
      'C': morningShift,
      'J': afternoonShift,
      'OFF': offShift,
    };
  }

  // staffs.forEach((s) => print('${s.name}  ${s.workCount}'));

  schedule.forEach((date, shifts) {
    print(date);
    schedule[date]!.forEach((k, v) {
      print('[$k]');
      schedule[date]![k]!.forEach((v) {
        print('${v.name}');
      });
    });
  });
}
