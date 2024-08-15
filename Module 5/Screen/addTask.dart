import 'package:flutter/material.dart';
import 'package:todolist/Dashboard.dart';
import 'package:todolist/Task.dart';
import 'package:todolist/TaskService.dart';

class Addtask extends StatefulWidget {
  const Addtask({super.key});

  @override
  State<Addtask> createState() => _AddtaskState();
}

class _AddtaskState extends State<Addtask> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  var task = Task();
  var Taskservice = TaskService();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add task"),
      actions: [
        Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter Name",
                labelText: "Name",
              ),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                hintText: "Enter description",
                labelText: "description",
              ),
            ),
            DropdownButton(
              hint: Text("Priority"),
                items: [
                DropdownMenuItem(child: Text("Low"),value: "Low",),
                DropdownMenuItem(child: Text("Medium"),value: "Medium",),
                DropdownMenuItem(child: Text("High"),value: "High",),
              ],
              onChanged: (value) {

               setState(() async{
                  task.priority = value;
               });

              },
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() async {
                  var curDate = DateTime.now();
                  task.name = _nameController.text.toString();
                  task.description = _descriptionController.text.toString();
                  task.time =
                      '${curDate.hour}:${curDate.minute}  ${curDate.day}-${curDate.month}-${curDate.year}';

                  var result = await Taskservice.insertService(task);

                  print("---- result $result");

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyDashboard(),
                      ));
                });
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ],
    );
  }
}
