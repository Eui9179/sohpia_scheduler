import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/date_info.dart';
import 'package:sophia_scheduler/screen/main/content/f_content.dart';

class BkDnIrdFrame extends StatelessWidget {
  const BkDnIrdFrame({
    super.key,
    required this.dateInfos,
    required this.bk,
    required this.dnIrd,
  });

  final List<DateInfo> dateInfos;
  final List<int> bk;
  final List<int> dnIrd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ...bk.map(
              (int num) => Container(
                height: ContentFrame.dateHeader,
                width: ContentFrame.rowHeight,
                alignment: Alignment.center,
                child: Text("$num"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ...dnIrd.map(
              (int num) => Container(
                height: ContentFrame.dateHeader,
                width: ContentFrame.rowHeight,
                alignment: Alignment.center,
                child: Text("$num"),
              ),
            ),
          ],
        ),
      ],
    );
    ;
  }
}
