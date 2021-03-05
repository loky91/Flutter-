import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
/* @override
  _TaskTileState createState()=> _TaskTileState();
}
class _TaskTileState extends State<TaskTile>{*/
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback});
/*  void checkboxCallback(bool checkboxState){
setState(() {
  isChecked=checkboxState;
});
  }*/
  @override
  Widget build(BuildContext context){
return ListTile(
  title: Text('Task is a task list',style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),),
  trailing: Checkbox(activeColor: Colors.lightBlueAccent,
    value: isChecked,
    onChanged: checkboxCallback,
  ),
);
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxstate;
  TaskCheckbox({this.checkboxState,this.toggleCheckboxstate});
  @override
  Widget build(BuildContext context) {
    return Checkbox(activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxstate,
    );
  }

}


