import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  final dummy = [
    'http://img4.tmon.kr/cdn3/deals/2019/07/25/2284990858/2284990858_front_mB8oOXB7kr.jpg',
    'https://image.auction.co.kr/itemimage/14/bb/dd/14bbdd6fd6.jpg',
    'https://www.koreatimes.net/images/attach/125773/20200130-13012108.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
              print('클릭');
            },
            child: Column(
              children: [
                Icon(
                  Icons.home,
                  size: 40,
                ),
                Text('홈'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('클릭');
            },
            child: Column(
              children: [
                Icon(
                  Icons.local_post_office,
                  size: 40,
                ),
                Text('전단 광고'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('클릭');
            },
            child: Column(
              children: [
                Icon(
                  Icons.event_available,
                  size: 40,
                ),
                Text('이벤트'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('클릭');
            },
            child: Column(
              children: [
                Icon(
                  Icons.label_outline,
                  size: 40,
                ),
                Text('쿠폰'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      height: 250.0,
      autoPlay: true,
      items: dummy.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(5, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이번주 이벤트] 이벤트 공지사항 입니다.'),
      );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
