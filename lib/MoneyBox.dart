import 'package:flutter/material.dart';

// สร้าง containner ต้นแบบ
class MoneyBox extends StatelessWidget {
  String title = ""; // ชื่อหมวดหมู่/รายการ
  double amount = 0; //จำนวนเงิน
  // Default to a pleasant blue tone
  Color color = Colors.lightBlue; //สีของกล่อง
  double size = 0; //ขนาดของกล่อง

  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // ignore: sort_child_properties_last
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
                child: Text(
              amount.toString(),
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.right,
            ))
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
