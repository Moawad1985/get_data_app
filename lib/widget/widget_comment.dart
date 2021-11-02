import 'package:flutter/material.dart';
class CommentWidget extends StatelessWidget {
  dynamic commentInfo ;
  CommentWidget({Key? key , this.commentInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey.shade300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage:AssetImage('images/prof.jpg',
                    ) ,
                    radius: 30,
                  ),
                  title: Text(
                      commentInfo["name"]
                  ),
                  subtitle: Text(commentInfo['email']),

                ),
                Text(commentInfo['body'],style: TextStyle(fontSize: 20,
                color: Colors.red
                ),),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(child: Text('Like',style: TextStyle(fontSize: 18),)),
                    Text(' | ',style: TextStyle(fontSize: 18),),
                    Container(child: Text('reply',style: TextStyle(fontSize: 18),)),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
