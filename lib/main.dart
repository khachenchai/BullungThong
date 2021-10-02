import 'package:bullung_thong/states/authen.dart';
import 'package:bullung_thong/states/terms.dart';
import 'package:bullung_thong/utility/my_constant.dart';
import 'package:flutter/material.dart';


final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/terms': (BuildContext context) => Terms(),
};

String? initialRoute;

void main() {
  initialRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyConstant.appName,
      routes: map,
      initialRoute: initialRoute,
    );
  }
}