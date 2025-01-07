import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template68/Controllers/controller.dart';
import 'package:template68/Utils/todo_list_row.dart';

class HomePage extends GetView<Controller> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
        ),
        floatingActionButton: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: TextField(
                  controller: controller.taskInput,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Add new task...',
                    filled: true,
                    fillColor: Colors.indigo.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Colors.indigo, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Colors.indigo, width: 1),
                    ),
                  ),
                  onSubmitted: (value) => controller.addTask(),
                ),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: controller.toDoList.length,
          itemBuilder: (context, index) {
            var item = controller.toDoList[index];
            return TodoListRow(
              index: index,
              item: item.task,
              isComplete: item.isComplete,
              onChange: (value) => controller.onChange(value!, index),
            );
          },
        ),
      );
    });
  }
}
