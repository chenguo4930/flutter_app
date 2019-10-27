import 'package:flutter/material.dart';
import 'package:flutter_app/base_cared.dart';

///免费听书馆
class CardFree extends BaseCard {
  @override
  BaseCardState createState() => _CardFreeState();
}

const BOOK_LIST = [
  {'title': '你好', 'cover': '51VykQqGg9L._SY346_.jpg', 'price': '18.9'},
  {'title': '你好', 'cover': '51VykQqGg9L._SY346_.jpg', 'price': '18.9'},
  {'title': '你好', 'cover': '51VykQqGg9L._SY346_.jpg', 'price': '18.9'},
  {'title': '你好', 'cover': '51VykQqGg9L._SY346_.jpg', 'price': '18.9'},
  {'title': '你好', 'cover': '51VykQqGg9L._SY346_.jpg', 'price': '18.9'},
  {'title': '你好', 'cover': '51VykQqGg9L._SY346_.jpg', 'price': '18.9'}
];

class _CardFreeState extends BaseCardState {
  @override
  bottomContent() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            //撑开高度
            Expanded(child: _bookList()),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _bottomBottom(),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget topTitle(String s) {
    return super.topTitle2('免费听书馆');
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('第 109 期');
  }

  _bookList() {
    return GridView.count(
      crossAxisCount: 3,
      //垂直间距
      mainAxisSpacing: 10,
      //水平间距
      crossAxisSpacing: 15,
      //长宽比
      childAspectRatio: 0.46,
      padding: EdgeInsets.only(left: 20, right: 20),
      children: BOOK_LIST.map((item) {
        return _item(item);
      }).toList(),
    );
  }

  Widget _bottomBottom() {
    return FractionallySizedBox(
        widthFactor: 1, // 宽度填满父布局
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.only(top: 13, bottom: 15),
              color: Colors.blue,
              child: Text(
                '免费领取',
                style: TextStyle(color: Colors.white),
              )),
        ));
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          //绝对布局
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                'http://www.devio.org/io/flutter_beauty/book_cover/${item['cover']}',
                fit: BoxFit.cover,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Colors.black54),
                  child: Text(
                    '原价${item['price']}',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item['title'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
