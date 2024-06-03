import 'dart:io';
import 'taskManager.dart';

void main() {
  TaskManager taskManager = TaskManager();
  while (true) {
    print('''
Task Manager
1. Add task
2. View Task
3. Update Task
4. Mark Task as Complete
5. Delete Task
6. Exit
Choose an Option: ''');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter Task Name');
        String? taskName = stdin.readLineSync();
        print('Task Description');
        String? description = stdin.readLineSync();
        if (taskName != null &&
            taskName.isNotEmpty &&
            description != null &&
            description.isNotEmpty) {
          taskManager.addTask(taskName, description);
        } else {
          print('Invalid Task Name or description.');
        }
        break;

      case '2':
        taskManager.viewTask();
        break;

      case '3':
        taskManager.viewTask();
        print('Enter The Task Number to Update: ');
        String? updated = stdin.readLineSync();
        int? index = int.tryParse(updated ?? '') ?? -1;
        print('Enter New Task Name:');
        String? newName = stdin.readLineSync();
        print('Enter New Task Description');
        String? newDescription = stdin.readLineSync();
        if (newName != null &&
            newName.isNotEmpty &&
            newDescription != null &&
            newDescription.isNotEmpty) {
          taskManager.updateTask(index - 1, newName, newDescription);
        } else {
          print('Invalid Name or Discription');
        }
        break;

      case '4':
        taskManager.viewTask();
        print('Enter Task Number to Mark as Complete: ');
        String? updated = stdin.readLineSync();
        int? index = int.tryParse(updated ?? '') ?? -1;
        taskManager.markTaskAsComplete(index - 1);
        break;

      case '5':
        taskManager.viewTask();
        print('Enter the Task Number to Delete');
        String? updated = stdin.readLineSync();
        int? index = int.tryParse(updated ?? '') ?? -1;
        taskManager.deleteTask(index - 1);

      case '6':
        print('Exiting Task Manager.');
        return;

      default:
        print('Invalid Choice. Please Try Again.');
    }
    ;
  }
}
