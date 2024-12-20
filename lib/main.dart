import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePager(),
    );
  }
}

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //default: center
        children: [
          // 이미지
          Image.network(
            "https://i.ibb.co/YjjLCS7/cat.png",
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.heart,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble,
                  color: Colors.black,
                ),
              ),
              Spacer(), //최대 크기까지 커지면서 공백을 만듬
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "2 likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My cat is docile even when bathed. I put a duck on his head in the wick and he's staring at me. Isn't it so cute??",
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "FEBURARY 6",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
