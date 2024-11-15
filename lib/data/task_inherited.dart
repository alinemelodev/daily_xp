import 'package:daily_xp/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required super.child,
  });

  final List<Task> taskList = [
    const Task('Aprender Flutter', 'assets/images/dash.png', 3),
    const Task('Meditar', 'assets/images/dash.png', 1),
    const Task('Fazer bolo', 'assets/images/dash.png', 1),
    const Task('Jogar Don t Starve Together', 'assets/images/dash.png', 2),
    const Task('Dar banho na Bellinha', 'assets/images/dash.png', 4),
  ];

  void addNewTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
