import 'package:flutter/material.dart';
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
        title: Text("Hello FLutter ครับ"),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, index) {
            FoodMenu food = menu[index];
            return ListTile(
              leading: Image.asset(food.img),
              title: Text(
                food.name,
                style: TextStyle(fontSize: 30),
              ),
              subtitle: Text(
                "ราคา " + food.price,
                style: TextStyle(fontSize: 20),
              ),
              onTap: (() {
                print("คุณเลือกเมนูอาหารชื่อว่า  =" + food.name);
              }),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: Icon(Icons.add),
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
