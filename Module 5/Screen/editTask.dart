import 'package:flutter/material.dart';
import 'package:todolist/Dashboard.dart';
import 'package:todolist/Task.dart';
import 'package:todolist/TaskService.dart';

class Edittask extends StatefulWidget {
  Task task;
  Edittask({super.key, required this.task});

  @override
  State<Edittask> createState() => _EdittaskState();
}

class _EdittaskState extends State<Edittask> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _nameController.text = widget.task.name!;
      _descriptionController.text = widget.task.description!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Edit task"),
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
          SizedBox(height: 5,), 
          ElevatedButton(
              onPressed: () {
                setState(() async {
                  widget.task.name = _nameController.text.toString();
                  widget.task.description =
                      _descriptionController.text.toString();

                  var taskService = TaskService();

                  var result = await taskService.updateService(widget.task);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyDashboard(),
                      ));
                });
              },
              child: Text("Update")),
        ],
      ),
    ]);
  }
}
