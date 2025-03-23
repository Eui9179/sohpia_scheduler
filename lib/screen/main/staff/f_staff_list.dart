import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_position.dart';
import 'package:sophia_scheduler/data/staff_data.dart';
import 'package:sophia_scheduler/screen/main/staff/w_staff.dart';

class StaffListFrame extends StatelessWidget {
  const StaffListFrame({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaffData> staffs = [
      StaffData("이소은", "sophia", StaffPosition.DOFB, 30, 8),
      StaffData("이의찬", "leui", StaffPosition.TEAM_MEMBER, 30, 8),
      StaffData("이다은", "daeun", StaffPosition.TEAM_MEMBER, 30, 8),
      StaffData("이준범", "junbum", StaffPosition.TEAM_LEADER, 30, 8),
    ];

    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FixedColumnWidth(100.0), // 헤더 열의 너비
      },
      children: [
        TableRow(
          children: [
            TableCell(
              child: StaffWidget(staffData: staffs[0]),
            ),
            TableCell(child: Center(child: Text('Row 1, Col 1'))),
            TableCell(child: Center(child: Text('Row 1, Col 2'))),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: StaffWidget(staffData: staffs[1]),
            ),

            TableCell(child: Center(child: Text('Row 2, Col 1'))),
            TableCell(child: Center(child: Text('Row 2, Col 2'))),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: StaffWidget(staffData: staffs[2]),
            ),
            TableCell(child: Center(child: Text('Row 3, Col 1'))),
            TableCell(child: Center(child: Text('Row 3, Col 2'))),
          ],
        ),
      ],
    );

    //   GridView.builder(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 31,
    //     crossAxisSpacing: 1,
    //     mainAxisSpacing: 1,
    //   ),
    //   itemCount: staffs.length + data.length,
    //   itemBuilder: (context, index) {
    //     if (index < staffs.length) {
    //       return GridTile(child: StaffWidget(staffData: staffs[index]));
    //     } else {
    //       return Text(data[index - staffs.length]);
    //     }
    //   },
    // );
  }
}
