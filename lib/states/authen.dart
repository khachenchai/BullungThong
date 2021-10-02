import 'package:bullung_thong/utility/my_constant.dart';
import 'package:bullung_thong/widgets/show_image.dart';
import 'package:bullung_thong/widgets/show_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool _toggled = true;
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
              ShowImage(path: MyConstant.image2, height: 150, width: 150),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: ShowTitle(
                  text: "ลงชื่อเข้าใช้",
                  textStyle: MyConstant().kanitH1Style()
                ),
              ),
              buildGoogle(),
              buildFacebook(),
              buildIndent(),
              buildPhoneNumber(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SwitchListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ShowTitle(text: "ฉันยอมรับ", textStyle: GoogleFonts.kanit(fontSize: 15, color: Colors.black)),
                      TextButton(onPressed: () => Navigator.pushNamed(context, MyConstant.routeTerms), child: ShowTitle(text: "ข้อตกลงในการใช้ซอฟต์แวร์ ", textStyle: GoogleFonts.kanit(fontSize: 15, color: Color(0xffae46ff), decoration: TextDecoration.underline)),)
                    ],
                  ),
                  value: _toggled,
                  onChanged: (bool value) {
                    setState(() => _toggled = value);
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

InkWell buildGoogle() {
  return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              color: Color(0xfff2f2f2)),
          padding: EdgeInsets.all(8.0),
          height: 60,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShowImage(
                path: MyConstant.googleImg,
                height: 30,
                width: 30,
              ),
              SizedBox(width: 15),
              Text(
                "Sign in with Google",
                style: MyConstant().h2Style(),
              )
            ],
          ),
        ),
      ),
      onTap: () => {print("object")});
}

InkWell buildFacebook() {
  return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              color: Color(0xff88afff)),
          padding: EdgeInsets.all(8.0),
          height: 60,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShowImage(
                path: MyConstant.facebookImg,
                height: 30,
                width: 30,
              ),
              SizedBox(width: 15),
              Text(
                "Sign in with Facebook",
                style: MyConstant().h2Style(),
              )
            ],
          ),
        ),
      ),
      onTap: () => {print("object")});
}

Padding buildIndent() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.black,
          width: 100,
          height: 3,
        ),
        ShowTitle(
            text: "หรือ", textStyle: MyConstant().kanitH2Style()),
        Container(
          color: Colors.black,
          width: 100,
          height: 3,
        ),
      ],
    ),
  );
}

InkWell buildPhoneNumber() {
  return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              color: Color(0xff9eff8e)),
          padding: EdgeInsets.all(8.0),
          height: 60,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShowImage(
                path: MyConstant.callImg,
                height: 20,
                width: 20,
              ),
              SizedBox(width: 15),
              Text(
                "Sign in with phone number",
                style: MyConstant().h2Style(),
              )
            ],
          ),
        ),
      ),
      onTap: () => {print("object")});
}