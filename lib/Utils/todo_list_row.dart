import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template68/Controllers/controller.dart';

class TodoListRow extends GetView<Controller> {
  const TodoListRow({
    super.key,
    required this.index,
    required this.item,
    required this.isComplete,
    this.onChange,
  });

  final int index;
  final String item;
  final bool isComplete;
  final Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.indigo.shade600,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Checkbox(
              value: isComplete,
              onChanged: onChange,
              checkColor: Colors.black,
              activeColor: Colors.white,
              side: const BorderSide(color: Colors.white),
            ),
            Text(
              item,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: isComplete
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationThickness: 3,
                decorationColor: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () => controller.deleteTask(index),
              icon: const Icon(
                Icons.delete,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
