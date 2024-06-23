import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemTile extends StatelessWidget {
  final void Function()? onPressed;
  final void Function()? delete;
  final String taskName;
  const ItemTile(
      {super.key,
      required this.onPressed,
      required this.taskName,
      required this.delete});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            taskName,
            style: GoogleFonts.robotoCondensed(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: onPressed,
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: delete,
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
