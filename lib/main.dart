import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  void handleSubmitted(text) async {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Explore"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 35,
                color: Colors.blue,
                child: Icon(Icons.add, color: Colors.white,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 35,
                color: Colors.blue,
                child: Icon(Icons.add_shopping_cart_rounded, color: Colors.white,),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.black54,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(14),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amberAccent, width: 2.0)),
                child: Row(
                  children: [
                    Icon(Icons.circle),
                    Expanded( child: Text("Play and Earn Coins")),
                    Icon(Icons.arrow_circle_right)
                  ],
                ),
              ),
              CarouselSlider.builder(
                itemCount: 15,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: false,
                    autoPlayInterval: Duration(seconds: 2)),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: Image.asset('assets/img1.jpeg'),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "All Subscriptions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: TextStyle(color: Colors.amber),
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          verticalImageContainer('assets/img1.jpeg',
                              "Car on Sale", "Starting at 5 laks")),
                ),
              ),
              Container(
                color: Colors.tealAccent,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/img1.jpeg',
                      height: 50.0,
                      width: 50.0,
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("YouTube Premium", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text("by Bruised Vein"),
                              Text("5/6 friend sharing")
                            ],
                          ),
                        )),
                    Flexible(
                      child: Column(
                        children: [
                          Text("38/User/Month"),
                          FlatButton(onPressed: (){}, child: Text("Join"),color: Colors.blue,)
                        ],
                      ),
                      flex: 0,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("What do you want us to list next?"),
                          Text("Suggest us subscription"),
                          TextField(
                            decoration: InputDecoration.collapsed(hintText: "Send a message"),
                          )
                        ],
                      ),
                    ),
                    Flexible(flex: 0,child: Icon(Icons.send),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            backgroundColor: Colors.black,
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            backgroundColor: Colors.black,
            label: 'Subpay',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}

Widget verticalImageContainer(image, title, subtitle) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
              .2,
              .9
            ], colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.3),
            ])),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    child: Text("Upto 70% off"),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
