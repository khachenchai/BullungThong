import 'package:bullung_thong/utility/my_constant.dart';
import 'package:bullung_thong/widgets/show_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: MyConstant.bgColor),
                width: 150,
                height: 150,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 40, 16, 0),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                width: 120,
                height: 120,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: ShowTitle(
                  text: "บัลลังก์ทอง",
                  textStyle: MyConstant()
                      .customKanitStyle(36, Colors.black, TextDecoration.none)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Center(
              child: TextButton(
                onPressed: () => {print("object")},
                child: ShowTitle(
                  text: "ลงชื่อเข้าใช้",
                  textStyle: MyConstant().customKanitStyle(24, Colors.blue.shade300, TextDecoration.underline),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
