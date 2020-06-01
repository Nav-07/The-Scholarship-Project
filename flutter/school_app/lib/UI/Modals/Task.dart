class Task {
  String name; // the name
  String subject; // the subject
  DateTime due; // the due date

  Task({this.name, this.subject, this.due});

  // This function converts the object to json, can be used later
  Map<String, dynamic> serialize() => {
    "name": this.name,
    "subject": this.subject,
    "due": this.due.toString()
  };
}