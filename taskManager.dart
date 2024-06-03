import 'task.dart';


//Task Manager Class
class TaskManager {
  List <Task> tasks = [];

  //Add New task
  void addTask(String taskName, String description) {
    tasks.add(Task(taskName, description,));
    print('Task added Sucessfully');
  }

  //view task
  void viewTask() {
    if (tasks.isEmpty) {
      print('No Task vailable');
    } else {
      for (int i = 0; i < tasks.length; i++) {
        print('${i + 1}. ${tasks[i]}');
      }
    }
  }

  //update task
  void updateTask(int index, String newTaskName, String newDescription) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid Index');
    } else {
      tasks[index].taskName = newTaskName;
      tasks[index].description = newDescription;
      print('Task Update Sucessfully');
    }
  }

  //marking task as completed
  void markTaskAsComplete(int index) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid Index.');
    } else {
      tasks[index].isCompleted = true;
      print('Task Complete');
    }
  }

  //delete task
  void deleteTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid Index.');
    } else {
      tasks.removeAt(index);
      print('Task Deleted Sucessfully');
    }
  }
}
