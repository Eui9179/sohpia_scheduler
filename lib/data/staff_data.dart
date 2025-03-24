import 'package:sophia_scheduler/data/staff_position.dart';

class StaffData {
  final String name;
  final String engName;
  final String serialNumber;
  StaffPosition staffPosition;
  int workCount;
  int offCount;

  StaffData(this.name, this.engName, this.serialNumber, this.staffPosition, this.workCount, this.offCount);
}