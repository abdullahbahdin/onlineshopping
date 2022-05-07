import 'package:flutter/material.dart';
import 'secondscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.amber,
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('img/mainn.png'),fit: BoxFit.cover)
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'User ID',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(28))
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(28))
              ),
            ),
          ),
          RaisedButton(onPressed: (){
            Navigator.push( context, MaterialPageRoute(builder: (context) => SecondScreen()));
          },child: Text("Sign In"),),
        ],
      ),
    );
  }
}
