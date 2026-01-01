import 'package:hive/hive.dart';
import 'package:quantum_todo_app/data/models/task_model.dart';


class TaskRepository {
  final Box taskBox;

  TaskRepository(this.taskBox);

  // Get all tasks
  List<TaskModel> getTasks() {
    return taskBox.values.cast<TaskModel>().toList();
  }

  // Add a task
  Future<void> addTask(TaskModel task) async {
    await taskBox.put(task.id, task);
  }

  // Update a task
  Future<void> updateTask(TaskModel task) async {
    await taskBox.put(task.id, task);
  }

  // Delete a task
  Future<void> deleteTask(String id) async {
    await taskBox.delete(id);
  }
}
