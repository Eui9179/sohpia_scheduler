import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_position.dart';

class PositionCircleWidget extends StatelessWidget {
  final StaffPosition staffPosition;

  const PositionCircleWidget({super.key, required this.staffPosition});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: staffPosition.color,
        shape: BoxShape.circle
      ),
    );
  }
}
