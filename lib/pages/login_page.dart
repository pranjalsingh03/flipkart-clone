import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onLoginPressed() {
    print("OnLoginPressed " +
        emailController.text +
        " pw : " +
        passwordController.text);
    _loadHomePage();
  }

  void _loadHomePage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 65, 164),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Image(
          //  image: AssetImage("assets/mall.png"),
          //   fit: BoxFit.cover,
          //   colorBlendMode: BlendMode.darken,
          //   color: Colors.black87,
          // ),
          Theme(
              data: ThemeData(
                  brightness: Brightness.dark,
                  inputDecorationTheme: InputDecorationTheme(
                    labelStyle:
                        TextStyle(color: Colors.tealAccent, fontSize: 25.0),
                  )),
              // isMaterialAppTheme: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/mall.png"),
                    height: 140.0,
                    width: 170.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Form(
                        // autovalidate: true,
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Email or Mobile No.',
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                          child: TextField(obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                              
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 40.0),
                          child: MaterialButton(
                              height: 50.0,
                              minWidth: 150.0,
                              color: Color.fromARGB(255, 19, 232, 179),
                              splashColor: Colors.teal,
                              textColor: Colors.white,
                              child: Text("Login"),
                              //onPressed: OnLoginCallBack(emailController.text, passwordController.text)),
                              onPressed: onLoginPressed),
                        )
                      ],
                    )),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
