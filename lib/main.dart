import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button Click',
      theme: ThemeData.dark(),
      home: new Scaffold(
        appBar: new AppBar(
            title: Text("Button Click Example"),
            centerTitle: true,
            backgroundColor: Colors.blueAccent),
        body: SafeArea(child: Center(child: ViewWidget())),
      ),
    );
  }
}

class ViewWidget extends StatefulWidget {
  @override
  ViewWidgetState createState() => ViewWidgetState();
}

class ViewWidgetState extends State {
  bool showVisible = false;
  void showWidget() {
    setState(() {
      showVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      showVisible = false;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("Click to show/hide Image"),
          onPressed: !showVisible ? showWidget : hideWidget,
          color: Colors.amberAccent[200],
          textColor: Colors.black,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: showVisible,
          child: new Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.only(top: 50, bottom: 30),
            child: new Center(
                child: Image(
                    image: NetworkImage(
                        "https://yt3.ggpht.com/a/AATXAJyPMywRmD62sfK-1CXjwF0YkvrvnmaaHzs4uw=s900-c-k-c0xffffffff-no-rj-mo"))),
          ),
        ),
      ],
    );
  }
}
