// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleView extends StatefulWidget {
  String blogUrl;
  ArticleView({required this.blogUrl});
  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    // final controller = WebViewController()
    //   ..setJavaScriptMode(JavaScriptMode.disabled)
    //   ..loadRequest(Uri.parse(widget.blogUrl));
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.blue[700],
            ),
          ),
          titleSpacing: MediaQuery.of(context).size.width * 0.2,
          backgroundColor: Colors.black,
          title: const Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                " News",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          child: TextButton(
            onPressed: () {
              launchUrl(Uri.parse(widget.blogUrl),
                  mode: LaunchMode.inAppWebView);
            },
            child: const Text(
              'Open the Site?',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ));
  }
}
