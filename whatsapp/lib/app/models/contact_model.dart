class ContactModel {
  final String name;
  final String bio;
  final String avatar;
  bool groupSelected = false;

  ContactModel(this.name, this.bio, this.avatar, this.groupSelected);
}

List<ContactModel> contactsData = [
  new ContactModel(
      'Ali', "سلام سطلان جطوری؟", "https://i.pravatar.cc/150?img=59", false),
  new ContactModel(
      'Milad J', "سلام جطوری؟", "https://i.pravatar.cc/150?img=27", false),
  new ContactModel(
      'Mamad', "  جطوری؟", "https://i.pravatar.cc/150?img=35", false),
  new ContactModel(
      'Telegram', " سطلان جطوری؟", "https://i.pravatar.cc/150?img=62", false),
  new ContactModel(
      'داداشم', "سلام سطلان جطوری؟", "https://i.pravatar.cc/150?img=59", false),
  new ContactModel('دانشگاه', "سلام سطلان جطوری؟",
      "https://i.pravatar.cc/150?img=63", false),
  new ContactModel('برنامه نویسان', "سلام سطلان جطوری؟",
      "https://i.pravatar.cc/150?img=7", false),
  new ContactModel('Best Music', "سلام سطلان جطوری؟",
      "https://i.pravatar.cc/150?img=59", false),
  new ContactModel('فنی یار', "سلام سطلان جطوری؟",
      "https://i.pravatar.cc/150?img=20", false),
  new ContactModel('Military', "سلام سطلان جطوری؟",
      "https://i.pravatar.cc/150?img=32", false),
  new ContactModel('گودو ایران', "سلام سطلان جطوری؟",
      "https://i.pravatar.cc/150?img=59", false),
  new ContactModel('لاراولی ها', "سلام سطلان جطوری؟",
      "https://i.pravatar.cc/150?img=59", false),
];
