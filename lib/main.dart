import 'package:flutter/material.dart';
import 'package:todoeyapp/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/models/task_data.dart';
import 'package:animations/animations.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

