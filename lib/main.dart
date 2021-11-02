
import 'package:flutter/material.dart';
import 'package:get_data_app/screens/comment_screen.dart';
import 'package:get_data_app/widget/widget_comment.dart';
void main() {
  runApp( const MyApp(title: 'Myapp',));
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home:CommentScreen(),
    );
  }
}
