import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/screen/main/content/staff/w_staff.dart';

class StaffListFrame extends StatelessWidget {
  const StaffListFrame({super.key, required this.staffs});

  final List<StaffData> staffs;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
          staffs
              .map(
                (staff) => Column(
                  children: [
                    StaffWidget(staffData: staff),
                    SizedBox(
                      width: 140,
                      height: 0,
                      child: Divider(color: Colors.black87, thickness: 0.5),
                    ),
                  ],
                ),
              )
              .toList(),
    );
  }
}
