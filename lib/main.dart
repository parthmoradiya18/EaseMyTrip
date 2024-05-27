import 'package:flutter/material.dart';
import 'package:train_booking/Web/WebPage.dart';

void main() {
  runApp(MaterialApp(home: Home(),
    debugShowCheckedModeBanner: false,));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "EaseMyTrip",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
          Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 125,
                  width: 125,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/train.jpg"))
                      ,shape: BoxShape.circle, color: Colors.white),
                  alignment: Alignment.center,
                  
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(219, 147, 112, 1),
                  padding: const EdgeInsets.all(3),
                  textStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Train_webPage(),
                        settings: const RouteSettings(
                          arguments: "https://www.easemytrip.com/railways/",
                        ),
                      ),);
                    },
                    child: Text(
                      "EaseMyTrip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          wordSpacing: 0.3,
                          color: Colors.black),
                    )),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
        ],
      ),
    );
  }
}
