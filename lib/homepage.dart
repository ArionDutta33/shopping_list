import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_list/alert_box.dart';
import 'package:shopping_list/item_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController taskController = TextEditingController();
  List task = [
    ["chicken"],
    ["fissh"],
    ["mutton"],
  ];

  void addTask() {
    setState(() {
      task.add([taskController.text]);
    });
    Navigator.of(context).pop();
  }

  void delTask(int index) {
    setState(() {
      task.removeAt(index);
    });
  }

  void onPressed() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertBox(
          add: addTask,
          cancel: () {
            Navigator.of(context).pop();
          },
          myController: taskController,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping List ",
          style: GoogleFonts.robotoCondensed(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context, index) {
          return ItemTile(
            taskName: task[index][0],
            onPressed: onPressed,
            delete: () {
              delTask(index);
            },
          );
        },
      ),
    );
  }
}
