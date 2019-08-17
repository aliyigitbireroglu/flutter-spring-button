//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// © Cosmos Software | Ali Yigit Bireroglu                                                                                                           /
// All material used in the making of this code, project, program, application, software et cetera (the "Intellectual Property")                     /
// belongs completely and solely to Ali Yigit Bireroglu. This includes but is not limited to the source code, the multimedia and                     /
// other asset files. If you were granted this Intellectual Property for personal use, you are obligated to include this copyright                   /
// text at all times.                                                                                                                                /
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//@formatter:off
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Image Sequence Animator Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Image Sequence Animator Demo'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime timer;
  int counter = 0;

  void incrementCounter() {
    if (timer == null || DateTime.now().difference(timer).inSeconds >= 1) {
      setState(() {
        counter++;
      });
    }
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void cancelTimer() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column(children: [
          Expanded(flex: 4, child: Center(child: Text(counter.toString(), textAlign: TextAlign.center))),
          Expanded(
              flex: 1, child: SpringButton(SpringButtonType.OnlyScale, normalRow("Increment", Colors.deepPurpleAccent), onTap: incrementCounter)),
          Expanded(flex: 1, child: SpringButton(SpringButtonType.OnlyScale, normalRow("Decrement", Colors.redAccent), onTap: decrementCounter))
        ]));
  }
}

Widget normalRow(String text, Color color) {
  return Padding(
      padding: EdgeInsets.all(12.5),
      child: Container(
          decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.all(const Radius.circular(10.0))),
          child: Center(child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.5)))));
}
