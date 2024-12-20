import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/feed.dart';

class HomePager extends StatelessWidget {
  const HomePager({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://i.ibb.co/CQxfdHY/cat1.jpg",
      "https://i.ibb.co/w6wxdrQ/cat2.jpg",
      "https://i.ibb.co/GnwVqCd/cat3.jpg",
      "https://i.ibb.co/1GMKYBy/cat4.jpg",
      "https://i.ibb.co/cTGzTTX/cat5.jpg",
      "https://i.ibb.co/47Y5Ct5/cat6.jpg",
      "https://i.ibb.co/ZW38ngD/cat7.gif",
    ];

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
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Feed(imageUrl: images[index]);
        },
        /**
         * ListView Builder를 사용해서 리스트뷰를 구현하는 경우
         * 안드로이드의 LazyList 처럼 현재 화면에 보이는 부분만 
         * 아이템을 생성하기 떼문에 효율적으로 리스트뷰를 구현할 수 있음
         */
      ),
    );
  }
}
