
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  String title;
  String imagePath;
  String name;
  int price;
  ThirdScreen({required this.title,required this.imagePath,required this.name,required this.price});
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC973E8),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.all(5),
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black,width: 2),
              ),
              child: Center(child: Text(widget.title,style: TextStyle(fontSize: 25),)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 350,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.imagePath))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(widget.name,style: TextStyle(fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Price",style: TextStyle(fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("${widget.price.toString()} \$",style: TextStyle(fontSize: 24),),
          ),
        ],
      ),
    );
  }
}
