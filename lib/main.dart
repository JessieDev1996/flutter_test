import 'package:flutter/material.dart';
import 'package:flutter_application_1/MoneyBox.dart';
import 'package:intl/intl.dart';
import 'FoodMenu.dart';

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

// class _MyHomePageState extends State<MyHomePage> {

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500", "assets/images/picture1.jpg"),
    FoodMenu("กระเพราหมู", "80", "assets/images/picture2.jpg"),
    FoodMenu("ส้มตำ", "60", "assets/images/picture3.jpg"),
  ];
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("บัญชีของฉัน"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          MoneyBox("ยอดคงเหลือ", 10000.41, Colors.lightBlue, 120),
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "ยอดคงเหลือ",
                    style: TextStyle(fontSize: 30),
                  ),
                  Expanded(
                      child: Text(
                    '${NumberFormat("#,###.####").format(1000.12451)}',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.right,
                  ))
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            height: 100,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            height: 100,
          )
        ]),
      ),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    data.add(Text("กดปุ่มเพื่อเพิ่มจำนวนเลข"));
    data.add(Text(
      number.toString(),
      style: TextStyle(fontSize: 60),
    ));
    data.add(Image(
        image: NetworkImage(
            "https://img.freepik.com/premium-photo/funny-cat-sunglasses-cat-with-glasses-light-blue-clean-sunny-background_90380-2753.jpg")));
    for (var i = 0; i < 10; i++) {
      var menu = ListTile(
        title: Text("เมนู $i"),
        subtitle: Text("หัวข้อย่อย ${i + 1}"),
      );
      data.add(menu);
    }
    return data;
  }
}
