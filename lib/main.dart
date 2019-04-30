import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Empire Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          color: Colors.black,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.0035)
              ..rotateX(-0.5),
            alignment: FractionalOffset.center,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Episode IV\n',
                        style: TextStyle(
                            fontFamily: 'News Gothic',
                            fontSize: 20,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "A NEW HOPE\n",
                        style: TextStyle(
                            fontFamily: 'News Gothic',
                            fontSize: 20,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Star Wars FINAL asda\nStar Wars asdasdasd\nStar Wars  asdasdas asdasds\nStar Wars  asdasdas asdasds asdasd\nStar Wars  asdasdas asdasds asdasd\nStar Wars  asdasdas asdasds asdasd\nStar Wars  asdasdas \nStar Wars  \nStar Wars   asdasd\asdasd\nasdasds asdasd\nStar Wars  asdasdas asdasds asdasd",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'News Gothic',
                            fontSize: 25,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
