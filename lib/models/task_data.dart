import 'package:flutter/material.dart';
import 'package:todoeyapp/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Click on Add to add a new Task. Hold this task to remove it'),
  ];
UnmodifiableListView<Task> get tasks {
  return UnmodifiableListView(_tasks);
}
  void addTask ( String newTasktitle){
    final task = Task(name: newTasktitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
  task.toggleDone();
  notifyListeners();
  }

  void deleteTask(Task task){
  _tasks.remove(task);
  notifyListeners();
  }
}