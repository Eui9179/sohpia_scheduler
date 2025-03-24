import 'dart:ui';

enum StaffPosition {
  DOFB(position: "DOFB", color: Color.fromRGBO(0, 0, 0, 100)),
  MGR(position: "MGR", color: Color.fromRGBO(91, 155, 213, 100)),
  ASST_MGR(position: "Asst MGR", color: Color.fromRGBO(244, 176, 132, 100)),
  TEAM_LEADER(position: "Team Leader", color: Color.fromRGBO(266, 239, 218, 100)),
  TEAM_MEMBER1(position: "Team Member", color: Color.fromRGBO(221, 235, 247, 100)),
  TEAM_MEMBER2(position: "Team Member", color: Color.fromRGBO(252, 228, 214, 100)),
  INTERN(position: "Intern", color: Color.fromRGBO(255, 230, 153, 100)),
  PART_TIMER(position: "Part Timer", color: Color.fromRGBO(255, 242, 204, 100));

  const StaffPosition({required this.position, required this.color});

  final String position;
  final Color color;
}
