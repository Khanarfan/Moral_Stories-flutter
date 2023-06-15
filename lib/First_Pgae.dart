import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts"),
        backgroundColor: Colors.black,


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
                  padding: const EdgeInsets.all(30),
                  child: Text("My Gmail:\nkhanarfanullah2002@gmail.com",
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
                  child: Text("PhoneNumber:0730404284",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text("Address:\nKabul University, Kabul, Afghanistan",
                      style: TextStyle(
                        fontSize: 20,
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
