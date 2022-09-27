import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

var image_paths = ['assets/img1.jpeg', 'assets/img2.jpeg', 'assets/img3.jpeg'];

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

  void handleSubmitted(text) async {}

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
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
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
                child: Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF202120),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(14),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFF01152b),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.amberAccent, width: 2.0)),
                child: Row(
                  children: [
                    Icon(Icons.circle, color: Colors.yellow),
                    Expanded(child: Text("Play and Earn Coins", style: TextStyle(color: Colors.white),)),
                    Icon(Icons.arrow_circle_right, color: Colors.white,)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(),
                child: CarouselSlider.builder(
                  itemCount: 3,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 2)),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    child: Image.asset(image_paths[itemIndex]),
                  ),
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
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) =>
                          verticalImageContainer(image_paths[index],
                              "Amazon Prime", "Starting at 100")),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF2a2b2a),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/youtube.png',
                      height: 50.0,
                      width: 50.0,
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "YouTube Premium",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "by Bruised Vein",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5/6 friend sharing",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        )),
                    Flexible(
                      child: Column(
                        children: [
                          Text("38/User/Month", style: TextStyle(color: Colors.white),),
                          FlatButton(
                            onPressed: () {},
                            child: Text("Join"),
                            color: Colors.blue,
                          )
                        ],
                      ),
                      flex: 0,
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Show all public groups.",
                    style: TextStyle(color: Color(0xFF9f9f9e)),
                  ),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.orangeAccent, width: 2)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFF2a2b2a),
                    borderRadius: BorderRadius.circular(10)),
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
                          Container(
                            child: Text(
                              "What do you want us to list next?",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                          ),
                          Container(
                              child: Text(
                                "Suggest us subscription",
                                style: TextStyle(color: Colors.white),
                              ),
                              margin: EdgeInsets.only(top: 10)),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: Color(0xFF3c3d3c),
                                borderRadius: BorderRadius.circular(4)),
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              showCursor: true,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Send a message"),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
      margin: EdgeInsets.only(right: 10),
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
                    child: Text(
                      "Upto 70% off",
                      style: TextStyle(color: Colors.white),
                    ),
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
