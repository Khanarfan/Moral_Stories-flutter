import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About"),backgroundColor: Colors.black,
      ),
      bottomNavigationBar: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(16),
          gap:0,
          onTabChange: (index){



          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),

            GButton(
              icon: Icons.add,
              text: "Add your story",
            ),
            GButton(
              icon: Icons.exit_to_app,
              text: "Exit",
            ),


          ]

      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "ABOUT THIS APPLICATION",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "This is an Application about different moral stories\n"
                      "that children, youths and elders can read it."
                      "There are six series in this application and each application "
                      "contains six stories."
                      "There is a drawer in this application in which you can "
                      "see the contacts of the author and you can read about this application."
                      "In the bottom of this application there is a navbar by which you"
                      "can exit from application you can go to home page and by add button you"
                      "can add your story to the application that's all about this application.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),


                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
