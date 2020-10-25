import 'package:flutter_web/material.dart';
import 'package:portfolio/ui/home.dart';

import 'package:portfolio/utils/screen/screen_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Dipanjan Panja | full stack web developer",
        debugShowCheckedModeBanner: false,
        color: Color(0xFF2c2f32),
        // onGenerateRoute: (settings) {
        //   List segments = settings.name.split('/').where((x) => !x.isEmpty).toList();
        //   String page = segments.length > 0 ? segments[0] : '';
        // },
        // initialRoute: "/",
        theme: ThemeData(brightness: Brightness.light, primaryColorBrightness: Brightness.light, accentColorBrightness: Brightness.light),
        // home: MyAppChild(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          "/": (context) => MyAppChild(),
        });
  }
}

class MyAppChild extends StatefulWidget {
  @override
  _MyAppChildState createState() => _MyAppChildState();
}

class _MyAppChildState extends State<MyAppChild> {
  @override
  Widget build(BuildContext context) {
    // instantiating ScreenUtil singleton instance, as this will be used throughout
    // the app to get screen size and other stuff
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return HomePage();
  }
}
