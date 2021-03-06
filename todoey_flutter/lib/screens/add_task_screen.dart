import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',style: TextStyle(fontSize: 30.0),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
               newTaskTitle=newText;
              },
            ),
            FlatButton(
              child: Text('Add',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                    addTaskCallback(newTaskTitle);
              },
            )
          ],
        ),
      ),
    );
  }
}
