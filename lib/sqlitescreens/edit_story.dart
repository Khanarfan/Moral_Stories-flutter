
import 'package:flutter/material.dart';

import '../dbhelper/database_helper.dart';
import '../model/story.dart';
class EditStory extends StatefulWidget {
  const EditStory({Key? key, this.id,required this.title,required this.description}) : super(key: key);
  final int? id;
  final String title;
  final String description;
  @override
  State<EditStory> createState() => _EditStoryState();
}

class _EditStoryState extends State<EditStory> {
  TextEditingController titlecont = new TextEditingController();
  TextEditingController descriptioncont = new TextEditingController();

  @override
  void initState() {
    super.initState();
    titlecont.text = widget.title;
    descriptioncont.text = widget.description;
  }
  void editstory() async{
    Story story = Story(id: widget.id, title: titlecont.text,
        description: descriptioncont.text);
    await StoryDatabase.instance.update(story);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Story"),),
      body: Column(children: [

        TextFormField(controller: titlecont, ),
        TextFormField(controller: descriptioncont, ),
        InkWell(
          onTap: (){
            editstory();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Story Editted"),
            ));
          },
          child: Icon(
            Icons.save,
            size: 34,
            color: Colors.green,
          ),
        )
      ],),
    );
  }
}
