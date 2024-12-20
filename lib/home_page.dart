import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/feed.dart';

class HomePager extends StatelessWidget {
  const HomePager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo.png', //파일 경로를 작성
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Feed(),
    );
  }
}
