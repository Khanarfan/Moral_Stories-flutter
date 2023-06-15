import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPage();
}

class _AnimationPage extends State<AnimationPage> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Animated widgets"),),
        body: GestureDetector(
          onTap: (){
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              width: double.infinity,
              height: 250,
              color: Colors.blueAccent,
              child: AnimatedAlign(
                alignment: selected? Alignment.centerRight:
                Alignment.centerLeft,
               duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: FlutterLogo(size: 40.0,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
