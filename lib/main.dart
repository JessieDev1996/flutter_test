import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello FLutter ครับ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("สวัสดีครับทุกคน"),
            Text("Hello Dart"),
            Text("Hello Flutter"),
            Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข"),
            Text(
              number.toString(),
              style: TextStyle(fontSize: 60),
            ),
            Image(
                image: NetworkImage(
                    "https://img.freepik.com/premium-photo/funny-cat-sunglasses-cat-with-glasses-light-blue-clean-sunny-background_90380-2753.jpg"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          addNumber();
        }),
        child: Icon(Icons.add),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }
}
