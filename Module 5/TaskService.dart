import 'package:todolist/Repository.dart';
import 'package:todolist/Task.dart';

class TaskService {
  late Repository repository1;

  // Constructor

  TaskService() {
    repository1 = Repository();
  }
  // Insert service

  insertService(Task task) {
    return repository1.insertData('task', task.TaskMap());
  }
  // Read Service

  readService() {
    return repository1.readData('task');
  }
  // Update Service

  updateService(Task task) {
    return repository1.updateData('task', task.TaskMap());
  }

  // Delete Service

  deleteService(Task task) {
    return repository1.deleteData('task', task.TaskMap());
  }
}
