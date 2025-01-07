import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:template68/Models/model.dart';

class Controller extends GetxController {
  var toDoList = [
    Model('Paolo Xumerle', false),
    Model('Luca Ruffo', false),
    Model('Simone Pasini', true),
    Model('Moreni Manzini', false),
    Model('Ivan Beverari', false),
  ].obs;

  void onChange(bool value, int index) {
    toDoList[index].isComplete = value;
    toDoList.refresh();
  }

  var taskInput = TextEditingController();

  void addTask() {
    if (taskInput.text.isNotEmpty) {
      final newTask = taskInput.text.trim();
      toDoList.add(Model(newTask, false));
    }
    taskInput.clear();
  }

  void deleteTask(int index) {
    if (toDoList[index].isComplete) {
      toDoList.removeAt(index);
    }
  }
}
