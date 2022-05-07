import 'package:flutter/material.dart';
import 'package:uafrontend/datamodels/newspost.dart';

class newsItem extends StatelessWidget {
  newsItem(
    this.newsPost, {
    Key? key,
  }) : super(key: key);

  NewsPost newsPost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            newsPost.date,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.blueGrey,
                fontFamily: "IBM Plex",
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 3),
          Text(
            newsPost.maintext,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black38,
                fontFamily: "IBM Plex",
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 3),
          Text(
            newsPost.hashtags,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.blueAccent,
                fontFamily: "IBM Plex",
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
