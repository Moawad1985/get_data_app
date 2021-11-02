import 'package:flutter/material.dart';
import 'package:get_data_app/services/network_helper.dart';
import 'package:get_data_app/widget/widget_comment.dart';

class CommentScreen extends StatefulWidget {

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  Future<List<dynamic>>? listOfComments;

  @override
  void initState() {

    super.initState();
    listOfComments = NetworkHelper().getComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to get List of Comments from API'),
      ),
      body: FutureBuilder<List<dynamic>>(
          future: listOfComments,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemBuilder: (context, index) {
                return CommentWidget(
                  commentInfo: snapshot.data![index],
                );
              });
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
