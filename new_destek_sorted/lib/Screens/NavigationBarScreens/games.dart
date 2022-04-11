import 'package:flutter/material.dart';
import 'package:new_destek_sorted/Screens/NavigationBarScreens/Games/Hangman/mainGame.dart';
import 'package:shimmer/shimmer.dart';

class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(186, 212, 227, 1),
          toolbarHeight: 70.0,
          leadingWidth: 60.0,

          leading: Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 147, 147, 1),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              color: Color.fromRGBO(246, 147, 147, 1),
              icon: Icon(
                Icons.keyboard_arrow_left_rounded,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.all(4.0),
            ),
          ),
          title: Center(
            child: Text(
              "Fun Games",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Rancho', fontSize: 30.0),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20.0),
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 147, 147, 1),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.favorite,
                color: Color.fromRGBO(242, 23, 23, 1),
                size: 25.0,
              ),
            )
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(255, 238, 238, 1),
                  Color.fromRGBO(184, 255, 249, 1)
                ],
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MainGame()));
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      height: 140,
                      width: 450,
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 9,
                                            offset: Offset(0, 3)),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(66, 194, 255, 0.8)),
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.black,
                                  highlightColor: Colors.deepPurpleAccent,
                                  child: Align(
                                    child: Hero(
                                      tag: 20,
                                      child: Image.asset(
                                        'assets/images/hangman.png',
                                        width: 100,
                                        height: 250,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(96, 212, 255, 0.8)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 20, bottom: 10, left: 15, right: 15),
                                  child: Text(
                                    'Hangman',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Oregano',
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => Feature1()));
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      height: 140,
                      width: 450,
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 9,
                                            offset: Offset(0, 3)),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromRGBO(133, 244, 255, 0.8)),
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.black,
                                  highlightColor: Colors.deepPurpleAccent,
                                  child: Align(
                                    child: Hero(
                                      tag: 21,
                                      child: Image.asset(
                                        'assets/images/tic-tac-toe.png',
                                        width: 500,
                                        height: 500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(150, 255, 243, 0.8)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 20, bottom: 10, left: 15, right: 15),
                                  child: Text(
                                    'Tic Tac Toe',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Oregano',
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => Feature1()));
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      height: 140,
                      width: 450,
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 9,
                                            offset: Offset(0, 3)),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromRGBO(213, 253, 254, 0.8)),
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.black,
                                  highlightColor: Colors.deepPurpleAccent,
                                  child: Align(
                                    child: Hero(
                                      tag: 22,
                                      child: Image.asset(
                                        'assets/images/snake.png',
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(222, 253, 229, 0.8)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 20, bottom: 10, left: 15, right: 15),
                                  child: Text(
                                    'Hungry Snake',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Oregano',
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )
                // child: Text('Hello'),
                )));
  }
}
