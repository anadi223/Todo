import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTasktitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40.0,bottom: 10.0,left: 55.0,right: 55.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                onChanged: (newText){
                  newTasktitle= newText;
                },
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  fillColor: Colors.lightBlueAccent,
                  hoverColor: Colors.lightBlueAccent,
                  focusColor: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(height: 10.0,),
              FlatButton(
                onPressed: (){
                  Provider.of<TaskData>(context,listen: false).addTask(newTasktitle);
                  Navigator.pop(context);
                },
                child: Text('Add'),
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
