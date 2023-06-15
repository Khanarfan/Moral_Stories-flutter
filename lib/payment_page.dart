import 'package:flutter/material.dart';
import 'package:your_app_name/menu_widget.dart';
class  PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("Home Page"),
      leading: MenuWidget(),
    ),
    body: Text("hellow word"),
  );
}