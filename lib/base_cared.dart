import 'package:flutter/material.dart';

///卡片基类
class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;
  Color bottomTitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[topContent(), bottomContent()],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
        padding: EdgeInsets.only(left: 20, top: 26, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //子控件左对齐
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end, //居下对齐
              children: <Widget>[topTitle(''), topTitle2('')],
            ),
            subTitle('')
          ],
        ));
  }

  bottomContent() {
    return Container();
  }

  Widget subTitle(String title) {
    return Padding(
        padding: EdgeInsets.only(top: 5),
        child:
            Text(title, style: TextStyle(fontSize: 11, color: subTitleColor)));
  }

  Widget topTitle(String title) {
    return Text(title, style: TextStyle(fontSize: 22));
  }

  ///空实现，供子类实现
  topTitle2(String s) {
    return Container();
  }

  bottomTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 12, color: bottomTitleColor),
    );
  }
}
