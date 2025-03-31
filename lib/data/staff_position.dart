enum StaffPosition {
  DOFB(position: "DOFB"),
  MGR(position: "MGR"),
  ASST_MGR(position: "Asst MGR"),
  TEAM_LEADER(position: "Team Leader"),
  TEAM_MEMBER1(position: "Team Member"),
  TEAM_MEMBER2(position: "Team Member"),
  INTERN(position: "Intern"),
  PART_TIMER(position: "Part Timer");

  const StaffPosition({required this.position});

  final String position;
}
