import 'package:bullung_thong/states/authen.dart';
import 'package:bullung_thong/states/homepage.dart';
import 'package:bullung_thong/states/pp.dart';
import 'package:bullung_thong/states/profile.dart';
import 'package:bullung_thong/states/terms.dart';
import 'package:bullung_thong/utility/my_constant.dart';
import 'package:flutter/material.dart';


final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/terms': (BuildContext context) => Terms(),
  '/profile': (BuildContext context) => Profile(),
  '/homepage': (BuildContext context) => HomePage(),
  '/fortuyen': (BuildContext context) => ForTuyen(),
};
//Option
// final Map<String, TextDecoration> customTextChoices = {
//       'none': TextDecoration.none,
//       'underl': TextDecoration.underline,
//       'overl': TextDecoration.overline,
//       'lt': TextDecoration.lineThrough,
//   };

String? initialRoute;

void main() {
  initialRoute = MyConstant.routeHomePage;
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