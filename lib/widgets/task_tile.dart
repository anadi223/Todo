import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChanged;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChanged,this.taskTitle, this.checkboxCallback,this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,style: TextStyle(decoration: isChanged? TextDecoration.lineThrough: null),),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChanged,
        onChanged: checkboxCallback,
      ),
    );
  }
}

