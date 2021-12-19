// ignore: file_names
// ignore_for_file: file_names

class Todo {
  String title;
  String paragraph;
  DateTime date;
  bool isDone;

  Todo(
      {required this.title,
      required this.paragraph,
      required this.date,
      this.isDone = false});

  String getTitle() {
    return this.title;
  }

  void setTitle(String new_title) {
    title = new_title;
  }

  String getParagraph() {
    return this.paragraph;
  }

  void setParagraph(String new_paragraph) {
    title = new_paragraph;
  }

  void toggleDone() {
    isDone = !isDone;
  }
}
