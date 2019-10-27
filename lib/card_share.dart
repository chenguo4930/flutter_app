import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base_cared.dart';

///分享得联名卡
class CardShare extends BaseCard {
  @override
  BaseCardState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState {
  @override
  bottomContent() {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(color: Color(0xfff6f7f9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
            child: Image.network(
                'http://www.devio.org/io/flutter_beauty/card_list.png'),
          )),
          Container(
            alignment: AlignmentDirectional.center, //重写父布局的位置约束，位于父布局中间
            child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: bottomTitle('200000人· 参与活动')),
          )
        ],
      ),
    ));
  }

  @override
  Widget topTitle(String title) {
    return super.topTitle('本周推荐');
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('分享给朋友最多可获得12天无限卡');
  }

  @override
  topTitle2(String s) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Text('/ 第19期', style: TextStyle(fontSize: 10)));
  }
}
