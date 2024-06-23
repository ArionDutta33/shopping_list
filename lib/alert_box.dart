import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  final TextEditingController myController;
  final void Function()? add;
  final void Function()? cancel;
  const AlertBox(
      {super.key,
      required this.myController,
      required this.add,
      required this.cancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[300],
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                hintText: "Add a new task",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: add,
                  child: const Text("Add Item"),
                ),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: cancel,
                  child: const Text("Cancel"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
