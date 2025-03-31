import 'package:flutter/material.dart';
import 'package:sophia_scheduler/data/staff_position.dart';

class PositionCircleWidget extends StatelessWidget {
  final StaffPosition staffPosition;

  const PositionCircleWidget({super.key, required this.staffPosition});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle
      ),
    );
  }
}
