import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      theme: ThemeData(primaryColor: Colors.blue),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final List<String> imagelist = [
    "https://blog.codemagic.io/uploads/covers/Codemagic-io_Blog_Flutter-Versus-Other-Mobile-Development-Frameworks_1.png",
    "https://wallpapercave.com/wp/U79ncgH.jpg",
    "https://wallpaperaccess.com/full/2541966.jpg"
  ];
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecom App UI"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add_alert,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Items",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text("View More"),
              ],
            ),
          ),
          CarouselSlider(
              items: imagelist.map(
                (a) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.0),
                        child: Image.network(a),
                      );
                    },
                  );
                },
              ).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
              )),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      "More Categories",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150.0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22.0),
                          child: Wrap(
                            children: [
                              Icon(
                                Icons.inbox,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("hamza",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 39.0),
                                child: Text(
                                  "khan",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22.0),
                          child: Wrap(
                            children: [
                              Icon(
                                Icons.inbox,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("hamza",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 39.0),
                                child: Text(
                                  "khan",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22.0),
                          child: Wrap(
                            children: [
                              Icon(
                                Icons.inbox,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Qadeer",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 39.0),
                                child: Text(
                                  "Hussain",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Center(
                          child: Text(
                        "More Categores",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ))
                    ],
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 10.0),
                                child: Center(
                                  child: Container(
                                    height: 150,
                                    width: 290,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Image.network(
                                      "https://wallpapercave.com/wp/U79ncgH.jpg",
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 90.0),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10.0,
                                          height: 20.0,
                                        ),
                                        Center(
                                          child: Text("MacBook",
                                              style: TextStyle(fontSize: 13.0)),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 8,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 8,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 8,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 8,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          size: 8,
                                          color: Colors.yellow[700],
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "(4.2/70 reviews)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.album, size: 45),
                          title: Text('Music'),
                          subtitle: Text('Best of Sonu Nigam Song'),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                        onPressed: () {},
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.blue,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        )),
                    MaterialButton(
                        onPressed: () {},
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.linked_camera,
                              color: Colors.blue,
                            ),
                            Text(
                              "like",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      width: 80.0,
                    ),
                    MaterialButton(
                        onPressed: () {},
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.blue,
                            ),
                            Text(
                              "Shop",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        )),
                    MaterialButton(
                        onPressed: () {},
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.admin_panel_settings,
                              color: Colors.blue,
                            ),
                            Text(
                              "admin",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
