import 'package:flutter/material.dart';
import 'package:notes_app/screens/addNoteScreen.dart';
import 'package:notes_app/screens/homeScreen.dart';
import 'package:notes_app/screens/notesScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        iconTheme: const IconThemeData(
      color: Colors.orange,
    )),
    home: const HomeScreen(),
  ));
}
