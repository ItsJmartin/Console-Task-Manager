//task class
class Task {
  String? taskName;
  String? description;
  bool isCompleted = false;

  Task(this.taskName, this.description);

  @override
  String toString() {
    return '${isCompleted ? "[x]" : "[ ]"} $taskName $description';
  }
}