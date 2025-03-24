import 'package:flutter/material.dart';
import 'package:sophia_scheduler/screen/main/content/staff/f_staff_list.dart';

class ContentFrame extends StatelessWidget {
  const ContentFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          StaffListFrame()
        ],
      ),
    );
  }
}
