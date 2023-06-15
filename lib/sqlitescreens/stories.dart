import 'package:flutter/material.dart';
import 'package:your_app_name/dbhelper/database_helper.dart';
import 'package:your_app_name/model/story.dart';
import 'package:your_app_name/sqlitescreens/added_story.dart';
import 'package:your_app_name/sqlitescreens/edit_story.dart';

import 'add_story.dart';

class Stories extends StatefulWidget {
  const Stories({super.key, required this.title});

  final String title;

  @override
  State<Stories> createState() => _Stories();
}

class _Stories extends State<Stories> {
  late List<Story> story;
  bool isloading = false;

  @override
  void initState() {
    super.initState();
    refreshStory();
  }

 /* @override
  void dispose() {
    StoryDatabase.instance.close();
    super.dispose();
  }
*/
  Future refreshStory() async {
    setState(() => isloading = true);
    story = await StoryDatabase.instance.readAllStory();
    setState(() => isloading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.title),
            Spacer(),
            InkWell(
                onTap: () {
                  refreshStory();
                },
                child: Icon(Icons.refresh))
          ],
        ),
      ),
      body: Center(
        child: isloading
            ? const CircularProgressIndicator()
            : story.isEmpty
                ? const Text("No Story")
                : buildStory(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return const AddStory();
            },
          )).then((value) => refreshStory());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildStory() => ListView.builder(
      itemCount: story.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left:20,right: 20, top:4.0),
          child: Row(
            children: [
              InkWell(

                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return  AddedStory(title: story[index].title, description: story[index].description,);
                    },
                  )).then((value) => refreshStory());
                },
                child: Icon(
                  Icons.remove_red_eye,
                  size: 34,
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 10,),
              Text(
                story[index].title,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              InkWell(

                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return  EditStory(id: story[index].id, title: story[index].title, description: story[index].description,);
                    },
                  )).then((value) => refreshStory());
                },
                child: Icon(
                  Icons.edit,
                  size: 34,
                  color: Colors.orange,
                ),
              ),
              InkWell(
                
                onTap: () {
                  StoryDatabase.instance.delete(story[index].id??1);
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                     backgroundColor: Colors.blueAccent,
                    content: Text("Story (" + story[index].title +") Deleted"),
                  ));
                  refreshStory();
                },
                child: Icon(
                  Icons.remove_circle,
                  size: 34,
                  color: Colors.red,
                ),
              )
            ],
          ),
        );
      });
}
