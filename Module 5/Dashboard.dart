import 'package:flutter/material.dart';
import 'package:todolist/Screen/addTask.dart';
import 'package:todolist/Screen/editTask.dart';
import 'package:todolist/Task.dart';
import 'package:todolist/TaskService.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  List<Task> taskList = [];

  var taskService = TaskService();
  var taskModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRecordFromDB();
  }

  getRecordFromDB() async {
    taskService = TaskService();
    var allTasks = await taskService.readService();

    allTasks.forEach((task) {
      taskModel = Task();
      setState(() {
        taskModel.id = task['id'];
        taskModel.name = task['name'];
        taskModel.description = task['description'];
        taskModel.time = task['time'];
        taskModel.priority = task['priority'];

        taskList.add(taskModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text(
          "Task List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onDoubleTap: () {
              showDialog(
                context: context,
                builder: (context) => Edittask(task: taskList[index]),
              );
            },
            onLongPress: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text("Delete this task"),
                  title: Text("Are you sure?"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() async {
                            var result = await taskService
                                .deleteService(taskList[index]);
                            print(result);

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyDashboard(),
                                ));
                          });
                        },
                        child: Text("Delete")),
                  ],
                ),
              );
            },
            child: Card(
              child: ListTile(
                tileColor: taskList[index].priority == "High"? Colors.red[300]: taskList[index].priority == "Medium" ? Colors.blue[300]:Colors.green[300],
                title: Text(
                  "${taskList[index].name}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("${taskList[index].description}"),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${taskList[index].time}",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.lightGreen,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => Addtask(),
            );
          }),
    );
  }
}
