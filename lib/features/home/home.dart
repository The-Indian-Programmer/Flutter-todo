import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class TodoItem {
  final String title;
  final String description;
  TodoItem(this.title, this.description);
}

class _HomePageState extends State<HomePage> {
  List<TodoItem> todoList = [
    TodoItem('Task 1', 'Description for Task 1'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
    TodoItem('Task 2', 'Description for Task 2'),
  ];

  void handleTodoDelete(int index) {
    // Show dialog
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Delete Todo'),
            content: const Text('Are you sure you want to delete this todo?'),
            actions: [
              TextButton(
                  onPressed: () {
                    // Close dialog
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      todoList.removeAt(index);
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Delete')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(todoList[index].title),
          subtitle: Text(todoList[index].description),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Handle edit action
                  Navigator.pushNamed(context, '/edit',
                      arguments: todoList[index]);
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  handleTodoDelete(index);
                },
              ),
            ],
          ),
        );
      },
    ));
  }
}
