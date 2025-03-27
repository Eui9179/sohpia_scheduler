import 'package:flutter/material.dart';
import 'package:sophia_scheduler/screen/main/content/f_content.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: ContentFrame.dateHeader,
      child: Text(title)
    );
  }
}
