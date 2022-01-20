class ChatModel {
  final String name;
  final String lastMessage;
  final String unrealMessageCount;
  final String time;
  final String avatar;

  ChatModel(this.name, this.lastMessage, this.unrealMessageCount, this.time,
      this.avatar);
}

List<ChatModel> chatsData = [
  new ChatModel('Ali', "سلام سطلان جطوری؟", "10", "3:30 AM",
      "https://i.pravatar.cc/150?img=59"),
  new ChatModel('Milad J', "سلام جطوری؟", "0", "3:40 AM",
      "https://i.pravatar.cc/150?img=27"),
  new ChatModel(
      'Mamad', "  جطوری؟", "24", "3:80 AM", "https://i.pravatar.cc/150?img=35"),
  new ChatModel('Telegram', " سطلان جطوری؟", "100", "4:30 AM",
      "https://i.pravatar.cc/150?img=62"),
  new ChatModel('داداشم', "سلام سطلان جطوری؟", "26", "5:30 AM",
      "https://i.pravatar.cc/150?img=59"),
  new ChatModel('دانشگاه', "سلام سطلان جطوری؟", "0", "5:35 AM",
      "https://i.pravatar.cc/150?img=63"),
  new ChatModel('برنامه نویسان', "سلام سطلان جطوری؟", "10", "5:50 AM",
      "https://i.pravatar.cc/150?img=7"),
  new ChatModel('Best Music', "سلام سطلان جطوری؟", "3", "8:30 AM",
      "https://i.pravatar.cc/150?img=59"),
  new ChatModel('فنی یار', "سلام سطلان جطوری؟", "192", "10:30 AM",
      "https://i.pravatar.cc/150?img=20"),
  new ChatModel('Military', "سلام سطلان جطوری؟", "0", "11:30 AM",
      "https://i.pravatar.cc/150?img=32"),
  new ChatModel('گودو ایران', "سلام سطلان جطوری؟", "0", "12:30 AM",
      "https://i.pravatar.cc/150?img=59"),
  new ChatModel('لاراولی ها', "سلام سطلان جطوری؟", "800", "12:35 AM",
      "https://i.pravatar.cc/150?img=59"),
];
