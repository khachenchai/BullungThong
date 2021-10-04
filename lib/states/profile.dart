import 'package:bullung_thong/utility/my_constant.dart';
import 'package:bullung_thong/widgets/show_image.dart';
import 'package:bullung_thong/widgets/show_title.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyConstant.bgColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22), topRight: Radius.circular(22)),
              color: Colors.white),
          child: ListView(
            padding: EdgeInsets.all(15),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: MyConstant.bgColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShowTitle(
                              text: "Khachenchai",
                              textStyle: MyConstant().h1Style()),
                          ShowTitle(
                              text: "Khachenchai",
                              textStyle: MyConstant().h2Style()),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: ShowTitle(
                    text: "ประวัติการจอง",
                    textStyle: MyConstant().headerKanitH1Style()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDay("วันนี้"),
                  buildDay("สัปดาห์นี้"),
                  buildDay("เดือนนี้"),
                ],
              ),
              buildHistory(),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildDay(String? days) {
    
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.all(Radius.circular(17))),
            width: 120,
            height: 45,
            child: Center(child: ShowTitle(text: days, textStyle: MyConstant().kanitH2Style())),
          ),
        ],
      ),
    );
  }

  Padding buildHistory() {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red[300]!.withOpacity(0.7),
            borderRadius: BorderRadius.all(Radius.circular(17))),
        width: 120,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ShowTitle(text: "โรงเรียนภูเก็ตวิทยาลัย", textStyle: MyConstant().headerKanitH2Style()),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: ShowTitle(text: "โต๊ะ F1", textStyle: MyConstant().kanitH3Style()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
