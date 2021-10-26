import 'package:bullung_thong/utility/my_constant.dart';
import 'package:bullung_thong/widgets/show_title.dart';
import 'package:flutter/material.dart';

class ForTuyen extends StatefulWidget {
  const ForTuyen({ Key? key }) : super(key: key);

  @override
  _ForTuyenState createState() => _ForTuyenState();
}

class _ForTuyenState extends State<ForTuyen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: ShowTitle(text: "ตู้เย็นของฉัน : kuevirf6", textStyle: MyConstant().customKanitStyle(16, Colors.white, TextDecoration.none)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 20, 8, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                color: Colors.white
              ),
              child: ShowTitle(text: "ตู้เย็นของฉัน : kuevirf6", textStyle: MyConstant().customKanitStyle(16, Colors.black, TextDecoration.none)),
            ),
          ],
        ),
      ),
    );
  }
}