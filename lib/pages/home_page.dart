import 'package:flutter/material.dart';
import 'package:project/pages/managers_page.dart';
import 'package:project/pages/profile_page.dart';
import 'package:project/pages/statistics_page.dart';
import 'package:project/pages/stores_page.dart';
import 'package:project/pages/surveys_page.dart';

import '../components/bottomnav.dart';
import '../strings.dart';


class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
   DrawerItem(Strings.profileTitle, Icons.person),
   DrawerItem(Strings.surveysTitle, Icons.book),
   DrawerItem(Strings.storesTitle, Icons.store),
   DrawerItem(Strings.managersTitle, Icons.group),
   DrawerItem(Strings.statisticsTitle, Icons.pie_chart),
  ];

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

   _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return ProfilePage();
      case 1:
        return SurveysPage();
      case 2:
        return StoresPage();
      case 3:
        return ManagersPage();
      case 4:
        return StatisticsPage();  

      default:
        return Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);
    var username = "Pranjal";
    var status =
        "Shop Management System";
    var misscalls = "0 Missed Calls";
    var callhistory = "Call History";
    
    var spam = "Spam And\nBlocked";
    var link = "Links and UPI ID's";
    var totalspam = "0 Spam";
    var drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
         ListTile(
            leading: Icon(d.icon),
            title: Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, top: 10, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi $username,",
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "$status",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      child: Image.asset("assets/images/app.png"),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(left: 1, top: 20, right: 1),
            //   child: CarouselSlider(
            //     options: CarouselOptions(height: 200.0),
            //     items: [
            //       "assets/images/kvhlogo.png",
            //       "assets/images/msgspam.jpg",
            //       "assets/images/kvhlogo.png"
            //     ].map((i) {
            //       return Builder(
            //         builder: (BuildContext context) {
            //           return Container(
            //               margin: EdgeInsets.symmetric(horizontal: 5.0),
            //               decoration: BoxDecoration(
            //                   // color: Colors.amber,

            //                   borderRadius: BorderRadius.circular(20)),
            //               child: Center(
            //                   child: Image(
            //                       image: AssetImage(
            //                 "$i",
            //               ))));
            //         },
            //       );
            //     }).toList(),
            //   ),
            // ),
            new GestureDetector(
              onTap: () async {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: new Container(
                padding: EdgeInsets.only(left: 20, top: 150, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 57, 99, 204), Color.fromARGB(255, 5, 56, 114)])),
                  child: Stack(children: [
                    // Image.asset("assets/images/call.png"),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, right: 45),
                        child: Column(children: [
                          Text(
                            "$callhistory",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5, right: 30),
                            child: Text(
                              "$misscalls",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5, left: 25),
                            child: Text(
                              "suspicious",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: new Container(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 57, 99, 204), Color.fromARGB(255, 5, 56, 114)])),
                  child: Stack(
                    children: [
                      // Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: 
                      //     Image.asset("assets/images/msg.png", height: 130)),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, right: 60),
                          child: Column(children: [
                            Text(
                              "message",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5, right: 50),
                              child: Text(
                                "totalmess",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5, left: 28),
                              child: Text(
                                "suspiciousmess",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: new Container(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 16, top: 10),
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 57, 99, 204), Color.fromARGB(255, 5, 56, 114)])),
                  child: Stack(
                    children: [
                      // Image.asset("assets/images/spam.png"),
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(children: [
                          Text(
                            "$spam",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, right: 78, left: 90),
                            child: Text(
                              "$link",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 5,
                            ),
                            child: Text(
                              "$totalspam",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


      appBar: AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
           UserAccountsDrawerHeader(
                accountName: Text("Admin"), accountEmail: null),
            // Column(children: drawerOptions)
          ],
        ),
      ),
      // body: _getDrawerItemWidget(_selectedDrawerIndex),
      bottomNavigationBar: btmnav(),
    );
  }
}