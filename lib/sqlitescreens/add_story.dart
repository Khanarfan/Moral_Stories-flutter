import 'package:flutter/material.dart';
import 'package:your_app_name/dbhelper/database_helper.dart';
import 'package:your_app_name/model/story.dart';

class AddStory extends StatefulWidget {
  final Story? story;

  const AddStory({
    Key? key,
    this.story
    }) : super(key: key);

  @override
  State<AddStory> createState() => _AddStory();
}

class _AddStory extends State<AddStory> {
  final _formKey = GlobalKey<FormState>();
  late int number;
  late String title;
  late String description;
   

  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  void addStory() async{
    Story story = Story(title: titlecontroller.text,
     description: descriptioncontroller.text);
    await StoryDatabase.instance.create(story);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Story")),
      body: SafeArea(
          child: Center(
        child: Column(
          children: <Widget>[
            TextFormField(controller: titlecontroller,decoration: const InputDecoration(hintText: "Title "),),
            TextFormField(controller: descriptioncontroller,decoration: const InputDecoration(hintText: "Description "),),
            ElevatedButton(
                onPressed: () {
                  addStory();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Story Added"),
                  ));
                },
                child: Text("Add Story"))
          ],
        ),
      )),
    );
  }
}
