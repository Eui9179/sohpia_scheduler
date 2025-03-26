import 'package:sophia_scheduler/data/week_day.dart';

class BkDnIrd {
  int am;
  int pm;
  WeekDay weekDay;

  BkDnIrd._(this.weekDay, this.am, this.pm);

  factory BkDnIrd(WeekDay weekDay) {
    int am, pm;

    switch (weekDay) {
      case WeekDay.MON:
      case WeekDay.TUE:
      case WeekDay.WED:
      case WeekDay.THU:
        am = 5; pm = 5;
        break;
      case WeekDay.FRI:
        am = 5; pm = 4;
        break;
      case WeekDay.SAT:
        am = 6; pm = 6;
        break;
      default:
        am = 9; pm = 5;
        break;
    }

    return BkDnIrd._(weekDay, am, pm);
  }
}