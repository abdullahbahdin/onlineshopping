import 'package:flutter/material.dart';
import 'thirdscreen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF43d1b5),
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
              child: Center(child: Text("Clothes",style: TextStyle(fontSize: 25),)),
            ),
          ),
        //burger
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdScreen(title: "T-shirt",imagePath: "img/shirt.png",name: "T-shirt",price: 10,)));
            },
            child: Row(
              children: [
               Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(image: AssetImage('img/shirt.png'),fit: BoxFit.cover)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("T-shirt",style: TextStyle(fontSize: 25),),
                )
              ],
            ),
          ),


          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdScreen(title: "Jeans",imagePath: "img/jeans.jpg",name: "Jeans",price: 20,)));
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(image: AssetImage('img/jeans.jpg'),fit: BoxFit.cover)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Jeans",style: TextStyle(fontSize: 25),),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdScreen(title: "Dress",imagePath: "img/girl.jpg",name: "Dress",price: 25,)));
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(image: AssetImage('img/girl.jpg'),fit: BoxFit.cover)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Dress",style: TextStyle(fontSize: 25),),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdScreen(title: "Caps",imagePath: "img/cap.jpg",name: "Caps",price:5,)));
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(image: AssetImage('img/cap.jpg'),fit: BoxFit.cover)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Caps",style: TextStyle(fontSize: 25),),
                )
              ],
            ),
          ),



          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdScreen(title: "Shoes",imagePath: "img/shoes.jpg",name: "Shoes",price: 15,)));
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black,width: 1),
                      image: DecorationImage(image: AssetImage('img/shoes.jpg'),fit: BoxFit.cover)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Shoes",style: TextStyle(fontSize: 25),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
