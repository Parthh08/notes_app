import 'package:flutter/material.dart';
import 'package:notes_app/screens/notesScreen.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => AddNotesState();
}

class AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          leadingWidth: 80,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                    color: Colors.orange,
                  ),
                  Text(
                    'Folders',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
          actions: [

            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.ios_share,
                  color: Colors.orange,
                )),
            const SizedBox(
              width: 4,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.orange,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Done',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            child: TextField(
              cursorColor: Colors.orange,
              keyboardType: TextInputType.text,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add Note',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.4),

                ),
              ),
            ),
          ),
        ));
  }
}
