import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'screens/home_screen.dart';

void main() => runApp(MaterialApp(home: HomePage(),theme: ThemeData(primarySwatch: Colors.purple),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController controller=TextEditingController();

  // var urlString="https://google.com";
  // launchingUrl(){
  //   setState(() {
  //     urlString=controller.text;
  //   });
  // }
  

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url:"https://harshblog.xyz",

    );
  }
}
