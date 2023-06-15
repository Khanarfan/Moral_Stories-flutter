import 'package:flutter/material.dart';
class AddedStory extends StatefulWidget {
  const AddedStory({Key? key,required this.title, required this.description}) : super(key: key);
  final String title;
  final String description;
  @override
  State<AddedStory> createState() => _AddedStoryState();
}

class _AddedStoryState extends State<AddedStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title.toString()) ,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(widget.description.toString()),
      )
    );
  }
}
