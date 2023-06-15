import 'dart:io';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:your_app_name/Second_Page.dart';
import 'package:your_app_name/animation.dart';
import 'package:your_app_name/sqlitescreens/add_story.dart';
import 'package:your_app_name/sqlitescreens/added_story.dart';
import 'package:your_app_name/sqlitescreens/stories.dart';


import 'First_Pgae.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Moral Stories';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: Text(title),
        elevation: 10,
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
          if(index==1){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddStory()));
          }
          if(index==2){
            exit(0);
          }

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
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.white,
                  child: ListTile(
                        selected: true,
                        title: Center(
                            child: const Text(
                              'Series-1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),)),

                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Story1(context)));

                        },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Color(0xFFFFFFFF),
                      ),

                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.blue,
                  child: ListTile(
                    selected: true,
                    title: Center(
                        child: const Text(
                          'Series-2',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Story2(context)));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Color(0xFFFFFFFF),
                  ),

                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.blue,
                  child: ListTile(
                    selected: true,
                    title: Center(
                        child: const Text(
                          'Series-3',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Story3(context)));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Color(0xFFFFFFFF),
                  ),

                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.white,
                  child: ListTile(
                    selected: true,
                    title: Center(
                        child: const Text(
                          'Series-4',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Story4(context)));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Color(0xFFFFFFFF),
                  ),

                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.blue,
                  child: ListTile(
                    selected: true,

                    title: Center(
                        child: const Text(
                          'Series-5',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Story5(context)));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Color(0xFFFFFFFF),
                  ),

                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.white,
                  child: ListTile(
                    selected: true,
                    title: Center(
                        child: const Text(
                          'Series-6',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),)),
                    onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Story6(context)));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Color(0xFFFFFFFF),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(

                  child: Column(
                    children: [
                      Text("Moral Stories",style: TextStyle(fontSize: 30,color: Colors.black),),
                      SizedBox(height: 30,),
                      Icon(Icons.account_balance,size: 50,color: Colors.black,),
                    ],
                  )
              ),
              ListTile(
                leading: Icon(Icons.import_contacts_sharp),
                title: Text(
                    "Contacts",
                       style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),    ListTile(
                leading: Icon(Icons.import_contacts_sharp),
                title: Text(
                  "About",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.import_contacts_sharp),
                title: Text(
                  "Added Stories",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stories(title: "Stories")));
                },
              ),
            ],

          ),
        ),
      ),
    );
  }
}
Widget Story6(context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Moral Storis Series-6"),
      backgroundColor: Colors.brown,
    ),
    body:Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.brown.shade300
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: ListTile(
                    selected: true,
                    title: Center(
                      child: const Text(
                        'THE ANT AND THE DOVE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S6S1()));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Colors.brown.shade300,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.brown.shade300
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: ListTile(
                    selected: true,

                    title: Center(
                      child: const Text(
                        'LEARN FROM MISTAKES',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S6S2()));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Colors.brown.shade300,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.brown.shade300
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: ListTile(
                    selected: true,
                    title: Center(
                      child: const Text(
                        "DON'T CHANGE THE WORLD",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S6S3()));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Colors.brown.shade300,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.brown.shade300
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: ListTile(
                    selected: true,
                    selectedColor: Colors.blue,
                    title: Center(
                      child: const Text(
                        'THE FARMER AND THE STORK',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500

                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S6S4()));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Colors.brown.shade300,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.brown.shade300
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: ListTile(
                    selected: true,

                    title: Center(
                      child: const Text(
                        'THE MONKEY AND THE DOLPHIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S6S5()));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Colors.brown.shade300,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                          color: Colors.brown.shade300
                      )
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: ListTile(
                    selected: true,
                    selectedColor: Colors.blue,
                    title: Center(
                      child: const Text(
                        'A POND FULL OF MILK',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S6S6()));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Colors.brown.shade300,
                  ),
                )
            ),
          ],
        ),
      ),
    )
  );
}
Widget S6S1(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE ANT AND THE DOVE")

      ),
      body: Center(child:Text("this is the first story of sixth series "))

  );
}
Widget S6S2(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE ANT AND THE DOVE")

      ),
      body: Center(child:Text("this is the first story of sixth series "))

  );
}
Widget S6S3(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE ANT AND THE DOVE")

      ),
      body: Center(child:Text("this is the first story of sixth series "))

  );
}
Widget S6S4(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE ANT AND THE DOVE")

      ),
      body: Center(child:Text("this is the first story of sixth series "))

  );
}
Widget S6S5(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE ANT AND THE DOVE")

      ),
      body: Center(child:Text("this is the first story of sixth series "))

  );
}
Widget S6S6(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE ANT AND THE DOVE")

      ),
      body: Center(child:Text("this is the first story of sixth series "))

  );
}


Widget Story2(context){
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Moral Storis Series-2"),),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.teal.shade200
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.teal,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE FOX AND THE GRAPES',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S2S1()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.teal.shade200,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.teal.shade200
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.teal,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE ANGEL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S2S2()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.teal.shade200,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.teal.shade200
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.teal,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE THIRSTY CROW',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S2S3()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.teal.shade200,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.teal.shade200
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.teal,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'MENTALLY RETARDED',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S2S4()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.teal.shade200,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.teal.shade200
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.blue,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE DEVOTED MOTHER',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S2S5()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.teal.shade200,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.teal.shade200
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.teal,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE MILK MAID',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S2S6()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.teal.shade200,
                    ),
                  )
              ),
            ],
          ),
        ),
      )
  );
}
Widget S2S1(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPS")

      ),
      body: Center(child:Text("THIS IS THE FIRST STORY OF SERIES2 "))

  );
}
Widget S2S2(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE ANGEL")

      ),
      body: Center(child:Text("THIS IS THE SECOND STORY OF SERIES2 "))

  );
}
Widget S2S3(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPS")

      ),
      body: Center(child:Text("THIS IS THE FIRST STORY OF SERIES2 "))

  );
}
Widget S2S4(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPS")

      ),
      body: Center(child:Text("THIS IS THE FIRST STORY OF SERIES2 "))

  );
}
Widget S2S5(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPS")

      ),
      body: Center(child:Text("THIS IS THE FIRST STORY OF SERIES2 "))

  );
}
Widget S2S6(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPS")

      ),
      body: Center(child:Text("THIS IS THE FIRST STORY OF SERIES2 "))

  );
}
Widget Story1(context){
  return Scaffold(
      appBar: AppBar(

        title: Text("Moral Storis Series-1"),
        backgroundColor: Colors.grey,
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                        color: Colors.grey
                    )
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: ListTile(
                    selected: true,

                    title: Center(
                      child: const Text(
                          'THE SELFISH MAN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500

                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S1S1()));
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    selectedTileColor: Colors.black38,
                ),
              )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'HOPE AND GREED',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S1S2()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.black38,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'GENEROSITY',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S1S3()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.black38,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'YOU ARE PRICELESS ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S1S4()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.black38,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE MOST BEAUTIFUL HEART',

                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S1S5()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.black38,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.grey
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'BE CAREFUL WHAT YOU PLANT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S1S6()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.black38,
                    ),
                  )
              ),

            ],

          ),
        ),
      )
  );
}
Widget S1S1(){
  return Scaffold(
    appBar: AppBar(
      title: Text("THE SELFISH MAN"),
      backgroundColor: Colors.black,

    ),
    body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text( "Once upon a time, there was a selfish man. He"
                      "liked everything to be his own. He could not "
                      "share his belongings with anyone, not even his friends or poors."
                      "One day, The man lost thirty gold coins. He went to his friend's house"
                      " and told him how he "
                      "lost his gold coins. his friend was a kind man."
                      "As his frind's daughter was coming from an errand she found "
                      "thirty gold coins when she arrived home , she told her father what she had "
                      "found. The girl's father told her that the gold coins belong to his friend"
                      "and he sent for him When the selfish man arrived he told him how his daughter "
                      "had found his thirty gold coins and handed then to him.after counting the gold"
                      "coins the man said that ten of them was missing and had been taken by the girl"
                      "as he had forty gold coins. he further commented that he will recover the "
                      "remaining amount from him.but the girls father refsed."
                      "The man left the gold coins and went to the court and informed the judge there"
                      "about what had taken place between him and the girl's father."
                      "The judge sent for the girl and her father, and when they arrived asked the girl"
                      "how many gold coins did she find. She replid thirty gold coins did she find."
                      "she replied thirty gold coins. The judge that asked the selfish man how many "
                      "gold coins and that if anybody reports that they have found forty gold coins he"
                      "will send for him . it was then that the man confessed that he lied and that he "
                      "lost thirty gold coins but the judge did not listen to him.",
                  style:
                  TextStyle(

                      fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                      ),
                ),
              ],
            )

    ))


  );
}
Widget S1S3(){
  return Scaffold(
      appBar: AppBar(
        title: Text("GENEROSITY"),
        backgroundColor: Colors.black,

      ),
      body: Center(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(  "Mahatma Gandhi went from city to city,"
                        " village to village collecting funds for the Charkha Sangh. "
                        "During one of his tours he addressed a meeting in Orissa."
                        "After his speech a poor old woman got up. She was bent with age,"
                        " her hair was grey and her clothes were in tatters. The volunteers tried to stop her,"
                        " but she fought her way to the place where Gandhi Ji was sitting. “I must see him,” "
                        "she insisted and going up to Gandhi Ji touched his feet."
                        "Then from the folds of her sari she brought out a copper coin and placed it at his feet."
                        " Gandhi Ji picked up the copper coin and put it away carefully. The Charkha Sangh funds were "
                        "under the charge of Jamnalal Bajaj. He asked Gandhi Ji for the coin but Gandhi Ji refused."
                        "I keep cheques worth thousands of rupees for the Charkha Sangh,” Jamnalal Bajaj said laughingly"
                        " “yet you won’t trust me with a copper coin.” “This copper coin is worth much more than those thousands” Gandhi Ji said."
                        " “If a man has several lakhs and he gives away a thousand or two, it doesn’t mean much."

                        "But this coin was perhaps all that the poor woman possessed."
                        " She gave me all she had. That was very generous of her. What a great sacrifice she made."
                        " That is why I value this copper coin more than a crore of rupees",


                      style:
                      TextStyle(

                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )

          ))


  );
}
Widget S1S2(){
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("HOPE AND GREED"),
          )

      ),
      body: Center(child:Padding(
        padding: const EdgeInsets.all(20),
        child: Text("Caliph Haroon Rashid desired that anyone who had seen the Holy Prophet"
            "(SAW) in his lifetime be brought before him. After some time a very old woman was brought before the Caliph. "
            "The Caliph asked the old woman, Did you see"
            "the Prophet yourself She said, Yes! Sir. The Caliph then asked her if she remembered any narration from him."
            " She said yes and said, When old age comes two things become young, one is hope and the other is greed."
            "The Caliph thanked her and gave her one hundred dinars. The woman thanked Caliph and she was taken back."
            "Half the way some thought passed through her mind and she desired to be brought before the Caliph once more."
            " When she was shown in, the Caliph asked, Well, why have you come back She said. "
            " I just came to inquire whether the monies you gave me were once for all or is it to continue every year"
            "The Caliph thought. How true is the Prophets (SAW) word she has hope of life even now and she has greed for money too."
            " The Caliph said, Don’t worry; you will be paid every year. She was taken back but on the way she breathed her last.",

  style:
  TextStyle(

  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.w500,)),
      ),
      )


  );
}
Widget S1S4(){
  return Scaffold(
      appBar: AppBar(
        title: Text("YOU ARE PRICELESS"),
        backgroundColor: Colors.black,

      ),
      body: Center(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(  "A well-known speaker started off his seminar by holding up a 20 bill."
                        " In the room of 200, he asked, “Who would like this 20 bill?” Hands started going up."
                        " He said, “I am going to give this 20 to one of you but first, let me do this.”"
                        " He proceeded to crumple up the 20 bill. He asked, “Who still wants it?”"
                        " Still hands were up in the air."
                        "Well, what if I do this?” He dropped it on the ground and started to grind it into "
                        "the floor with his shoe. He picked it up, now crumpled and dirty and asked,"
                        " “Who still wants it?” Still hands went up into the air."
                        "My friends, we have all learned a very valuable lesson. No matter what was done"
                        " to the money, it was still wanted because it did not decrease in value. It was "
                        "still worth 20. Many times in our lives, we are dropped, crumpled and ground into"
                        " the dirt by the decisions we make and the circumstances that come our way. We may feel as though we are worthless.",

                      style:
                      TextStyle(

                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )

          ))


  );
}

Widget S1S5(){
  return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("THE MOST BEAUTIFUL HEART"),
          )

      ),
      body: Center(child:Padding(
        padding: const EdgeInsets.all(20),
        child: Text("Caliph Haroon Rashid desired that anyone who had seen the Holy Prophet"
            "(SAW) in his lifetime be brought before him. After some time a very old woman was brought before the Caliph. "
            "The Caliph asked the old woman, Did you see"
            "the Prophet yourself She said, Yes! Sir. The Caliph then asked her if she remembered any narration from him."
            " She said yes and said, When old age comes two things become young, one is hope and the other is greed."
            "The Caliph thanked her and gave her one hundred dinars. The woman thanked Caliph and she was taken back."
            "Half the way some thought passed through her mind and she desired to be brought before the Caliph once more."
            " When she was shown in, the Caliph asked, Well, why have you come back She said. "
            " I just came to inquire whether the monies you gave me were once for all or is it to continue every year"
            "The Caliph thought. How true is the Prophets (SAW) word she has hope of life even now and she has greed for money too."
            " The Caliph said, Don’t worry; you will be paid every year. She was taken back but on the way she breathed her last.",

            style:
            TextStyle(

              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,)),
      ),
      )


  );
}
Widget S1S6(){
  return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("BE CAREFUL WHAT YOU PLANT"),
          )

      ),
      body: Center(child:Padding(
        padding: const EdgeInsets.all(20),
        child: Text("Caliph Haroon Rashid desired that anyone who had seen the Holy Prophet"
            "(SAW) in his lifetime be brought before him. After some time a very old woman was brought before the Caliph. "
            "The Caliph asked the old woman, Did you see"
            "the Prophet yourself She said, Yes! Sir. The Caliph then asked her if she remembered any narration from him."
            " She said yes and said, When old age comes two things become young, one is hope and the other is greed."
            "The Caliph thanked her and gave her one hundred dinars. The woman thanked Caliph and she was taken back."
            "Half the way some thought passed through her mind and she desired to be brought before the Caliph once more."
            " When she was shown in, the Caliph asked, Well, why have you come back She said. "
            " I just came to inquire whether the monies you gave me were once for all or is it to continue every year"
            "The Caliph thought. How true is the Prophets (SAW) word she has hope of life even now and she has greed for money too."
            " The Caliph said, Don’t worry; you will be paid every year. She was taken back but on the way she breathed her last.",

            style:
            TextStyle(

              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,)),
      ),
      )


  );
}

Widget Story3(context){
  return Scaffold(
      appBar: AppBar(
        title: Text("Moral Storis Series-3"),
        backgroundColor: Colors.cyan,
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.cyan.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.cyan,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'BEAUTIFUL GIFT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500

                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S3S1()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.cyan.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.cyan.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.cyan,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          "DON'T JUDGE A BOOK BY ITS COVER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S3S2()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.cyan.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.cyan.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.cyan,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'A HOLE IN THE FENCE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S3S3()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.cyan.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.cyan.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.cyan,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          "THE WOLF IN SHEEP'S CLOTHING",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S3S4()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.cyan.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.cyan.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.cyan,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'TRUE WEALTH',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S3S5()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.cyan.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.cyan.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.cyan,
                    child: ListTile(
                      selected: true,
                      selectedColor: Colors.blue,
                      title: Center(
                        child: const Text(
                          'WAHT IS A FAMILY',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S3S6()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.cyan.shade300,
                    ),
                  )
              ),
            ],
          ),
        ),
      )
  );
}
Widget S3S1(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget S3S2(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text(" THIS IS THE SECOND STORY OF THIRD  SERIES "))

  );
}
Widget S3S3(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE third SERIES third STORY "))

  );
}
Widget S3S4(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("this is the second seris fourth story "))

  );
}
Widget S3S5(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget S3S6(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget Story4(context){
  return Scaffold(
      appBar: AppBar(
        title: Text("Moral Storis Series-4"),
        backgroundColor: Colors. pink.shade300,
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.pink.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.pink,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'MOUNTAIN STORY',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S4S1()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.pink.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.pink.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.pink,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'WEAKNESS OR STRENGTH',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S4S2()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.pink.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.pink.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.pink,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'GOD EXISTS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S4S3()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.pink.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.pink.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.pink,
                    child: ListTile(
                      selected: true,
                      selectedColor: Colors.blue,
                      title: Center(
                        child: const Text(
                          'JUST PUSH',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S4S4()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.pink.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.pink.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.pink,
                    child: ListTile(
                      selected: true,
                      selectedColor: Colors.blue,
                      title: Center(
                        child: const Text(
                          'A BOY WITH STRONG BELIEF',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S4S5()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.pink.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.pink.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.pink,
                    child: ListTile(
                      selected: true,
                      selectedColor: Colors.blue,
                      title: Center(
                        child: const Text(
                          'WORDS AND ACTIONS SHOULD BE THE SAME',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S4S6()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.pink.shade300,
                    ),
                  )
              ),
            ],
          ),
        ),
      )
  );
}
Widget S4S1(){
  return Scaffold(
      appBar: AppBar(
          title: Text("MOUNTAIN SRTORY")

      ),
      body: Center(child:Text("THIS THE fourth SERIES FIRST STORY "))

  );
}
Widget S4S2(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget S4S3(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget S4S4(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget S4S5(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget S4S6(){
  return Scaffold(
      appBar: AppBar(
          title: Text("THE FOX AND THE GRAPES")

      ),
      body: Center(child:Text("THIS THE SEECOND SERIES FIRST STORY "))

  );
}
Widget Story5(context){
  return Scaffold(
      appBar: AppBar(
        title: Text("Moral Storis Series-5"),
        backgroundColor: Colors.indigo,
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.indigo.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE ONE EYED DOE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S5S1()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.indigo.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.indigo.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: ListTile(
                      selected: true,
                      selectedColor: Colors.blue,
                      title: Center(
                        child: const Text(
                          'OLD GRAVE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S5S2()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.indigo.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.indigo.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: ListTile(
                      selected: true,
                      selectedColor: Colors.blue,
                      title: Center(
                        child: const Text(
                          'THE THREE WISE MEN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S5S3()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.indigo.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.indigo.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE ANT AND THE GRASSHOPPER',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S5S4()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.indigo.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.indigo.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE PROUD RED ROSE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S5S5()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.indigo.shade300,
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.indigo.shade300
                        )
                    ),
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: ListTile(
                      selected: true,

                      title: Center(
                        child: const Text(
                          'THE FOX WHO GOT CAUGHT IN THE TREE TRUNK',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>S5S6()));
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      selectedTileColor: Colors.indigo.shade300,
                    ),
                  )
              ),

            ],
          ),
        ),
      )
  );
}
Widget S5S1(){
  return Scaffold(
      appBar: AppBar(
          title: Text("MOUNTAIN SRTORY")

      ),
      body: Center(child:Text("THIS THE fifth SERIES FIRST STORY "))

  );
}
Widget S5S2(){
  return Scaffold(
      appBar: AppBar(
          title: Text("MOUNTAIN SRTORY")

      ),
      body: Center(child:Text("THIS THE fifth SERIES FIRST STORY "))

  );
}
Widget S5S3(){
  return Scaffold(
      appBar: AppBar(
          title: Text("MOUNTAIN SRTORY")

      ),
      body: Center(child:Text("THIS THE fifth SERIES FIRST STORY "))

  );
}
Widget S5S4(){
  return Scaffold(
      appBar: AppBar(
          title: Text("MOUNTAIN SRTORY")

      ),
      body: Center(child:Text("THIS THE fifth SERIES FIRST STORY "))

  );
}
Widget S5S5(){
  return Scaffold(
      appBar: AppBar(
          title: Text("MOUNTAIN SRTORY")

      ),
      body: Center(child:Text("THIS THE fifth SERIES FIRST STORY "))

  );
}
Widget S5S6(){
  return Scaffold(
      appBar: AppBar(
          title: Text("MOUNTAIN SRTORY")

      ),
      body: Center(child:Text("THIS THE fifth SERIES FIRST STORY "))

  );
}



