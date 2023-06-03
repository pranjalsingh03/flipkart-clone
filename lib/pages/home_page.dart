import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/managers_page.dart';


import '../components/bottomnav.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // final drawerItems = [
  //  DrawerItem(Strings.profileTitle, Icons.person),
  //  DrawerItem(Strings.surveysTitle, Icons.book),
  //  DrawerItem(Strings.storesTitle, Icons.store),
  //  DrawerItem(Strings.managersTitle, Icons.group),
  //  DrawerItem(Strings.statisticsTitle, Icons.pie_chart),
  // ];

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var username = "Pranjal";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 10, top: 50, right: 20),
              // alignment: Alignment.topCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Hi $username,",
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      // Text(
                      //   "$status",
                      //   style: const TextStyle(
                      //       fontSize: 16,
                      //       fontWeight: FontWeight.normal,
                      //       color: Colors.grey),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 75,
                    width: 75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      // child: Image.asset("assets/images/app.png"),
                      child: ColoredBox(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              padding: const EdgeInsets.only(left: 1, top: 20, right: 1),
              child: CarouselSlider(
                
                options: CarouselOptions(height: 100),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return const SizedBox(
                    height: 125,
                    width: 125,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(44)),
                      // child: Image.asset("assets/images/app.png"),
                      child: ColoredBox(color: Colors.green),
                    ),
                  );
                      // Container(
                      //     margin: EdgeInsets.symmetric(horizontal: 5.0),
                      //     decoration: BoxDecoration(
                      //         // color: Colors.amber,

                      //         borderRadius: BorderRadius.circular(20)),
                      //     child: Center(
                      //         child: Image(
                      //             image: AssetImage(
                      //       "$i",
                      //     ))));
                    },
                  );
                }).toList(),
              ),
            ),
            GestureDetector(
              onTap: () async {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ManagersPage()));
              },
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 100, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 57, 99, 204), Color.fromARGB(255, 5, 56, 114)])),
                  child: Stack(children: [
                    Image.asset("assets/images/onlineshopping.png"),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, right: 45),
                        child: Column(children: const [
                          Text(
                            "Online\nShopping",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          // Container(
                          //   padding: EdgeInsets.only(top: 5, right: 30),
                          //   child: Text(
                          //     "$misscalls",
                          //     style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: 16,
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.only(top: 5, left: 25),
                          //   child: Text(
                          //     "suspicious",
                          //     style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: 16,
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                        ]),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ManagersPage()));
              },
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Container(
                  padding: const EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 57, 99, 204), Color.fromARGB(255, 5, 56, 114)])),
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: 
                          Image.asset("assets/images/affileatmar.png",)),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, right: 50),
                          child: Column(children: const [
                            Text(
                              "Affileate",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Container(
                            //   padding: EdgeInsets.only(top: 5, right: 50),
                            //   child: Text(
                            //     "totalmess",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 16,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.only(top: 5, left: 28),
                            //   child: Text(
                            //     "suspiciousmess",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 16,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ManagersPage()));
              },
              child:Container(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Container(
                  padding: const EdgeInsets.only(left: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 57, 99, 204), Color.fromARGB(255, 5, 56, 114)])),
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: 
                          Image.asset("assets/images/connections.png", height: 130)),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, right: 30),
                          child: Column(children: const [
                            Text(
                              "Connections",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Container(
                            //   padding: EdgeInsets.only(top: 5, right: 50),
                            //   child: Text(
                            //     "totalmess",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 16,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.only(top: 5, left: 28),
                            //   child: Text(
                            //     "suspiciousmess",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 16,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ManagersPage()));
              },
              child: Container(
                padding:
                    const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 26, top: 10),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 57, 99, 204), Color.fromARGB(255, 5, 56, 114)])),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/contactus.png"),
                      Align(
                        alignment: Alignment.center,
                        
                        child: Column(children: const [
                          Text(
                            "spam",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          // Container(
                          //   padding:
                          //       EdgeInsets.only(top: 10, right: 78, left: 90),
                          //   child: Text(
                          //     "link",
                          //     style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: 16,
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.only(
                          //     top: 5,
                          //   ),
                          //   child: Text(
                          //     "totalspam",
                          //     style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: 16,
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // )
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
      


      // appBar: AppBar(
      //   // here we display the title corresponding to the fragment
      //   // you can instead choose to have a static title
      //   title: Text(widget.drawerItems[_selectedDrawerIndex].title),
      // ),
      // drawer: Drawer(
      //   child: Column(
      //     children: <Widget>[
      //      UserAccountsDrawerHeader(
      //           accountName: Text("Admin"), accountEmail: null),
      //       // Column(children: drawerOptions)
      //     ],
      //   ),
      // ),
      // body: _getDrawerItemWidget(_selectedDrawerIndex),
      bottomNavigationBar: const btmnav(),
    );
  }
}