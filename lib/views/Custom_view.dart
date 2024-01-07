import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomView extends StatelessWidget {
  const CustomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Antila",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.profile_circled),
            onPressed: () {
              print("hello world");
            },
          ),
        ],
      ),
    );
  }
}
