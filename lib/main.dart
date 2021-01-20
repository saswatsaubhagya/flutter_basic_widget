import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Icon(Icons.circle),
            Text("Basic"),
          ],
        ),
        centerTitle: false,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
        ],
        bottom: PreferredSize(
          preferredSize: Size(200, 80),
          child: Text("Kuch bhi"),
        ),
        bottomOpacity: 0.5,
        elevation: 20,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("simple"),
            FlutterLogo(),
            Placeholder(
              fallbackHeight: 20,
              fallbackWidth: 30,
            ),
            Icon(
              Icons.access_alarms,
              color: Colors.pinkAccent,
              size: 50,
              semanticLabel: "clock",
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.topLeft,
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff89e36b),
                        Color.fromRGBO(188, 102, 237, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5,
                        spreadRadius: 2,
                        //offset: Offset(0, 0),
                      )
                    ]),
                // child: Container(
                //   height: 10,
                //   width: 10,
                //   color: Colors.white,
                // ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.add_photo_alternate,
          color: Colors.pink,
        ),
      ),
    );
  }
}
