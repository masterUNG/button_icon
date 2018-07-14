import 'package:flutter/material.dart';

void main()
 {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final titleString = "Button Icon Learn";
    final h2Double = 18.0;
    final lorem = "Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย";

    Widget buttonButton(IconData iconShow, String stringShow){
      final Color myColor = Colors.blueAccent;
      return new Column(children: <Widget>[
        new Icon(iconShow, color: myColor,),
        new Container(margin: EdgeInsets.all(10.0),
        child: new Text(
          stringShow,
          style: new TextStyle(
              fontSize: h2Double,
              fontWeight: FontWeight.bold,
              color: myColor),
        )
          ,)
      ],);
    }

    Widget topWidget = new Container(margin: EdgeInsets.all(10.0),
      child: new Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        buttonButton(Icons.home, "Home"),
        buttonButton(Icons.arrow_back, "Back"),
        buttonButton(Icons.arrow_forward, "Next"),
        buttonButton(Icons.share, "Share")
      ],),
    );

    Widget widgetLongText = new Container(
      padding: EdgeInsets.all(10.0),
      child: new Text(lorem),
    );

    return new MaterialApp(
      title: titleString,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titleString),
        ),
        body: new Container(
          child: new Column(children: <Widget>[
            topWidget,
            widgetLongText
          ],),
        ),

      ),
    );
  }
}
