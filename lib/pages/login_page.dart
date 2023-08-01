import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';



class LoginPage extends StatefulWidget
{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
{
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  void onLoginPressed () {
    print("OnLoginPressed "+emailController.text+" pw : "+passwordController.text);
    _loadHomePage();
  }

  void _loadHomePage(){
    Navigator.of(context).push( new MaterialPageRoute(
        builder: (BuildContext context) {
          return new HomePage();
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 65, 164),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // new Image(
          //  image: new AssetImage("assets/mall.png"),
          //   fit: BoxFit.cover,
          //   colorBlendMode: BlendMode.darken,
          //   color: Colors.black87,
          // ),
          new Theme(
              data: new ThemeData(
                brightness: Brightness.dark,
                inputDecorationTheme: new InputDecorationTheme(
                  labelStyle: new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
                )),
              // isMaterialAppTheme: true,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image(
                    image: new AssetImage("assets/images/mall.png"),
                    height: 140.0,
                    width: 170.0,
                  ),
                  new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Form(
                        // autovalidate: true,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new TextFormField(
                              decoration: new InputDecoration( labelText: "Enter Email", fillColor: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              ),
                            new TextFormField(
                              decoration: new InputDecoration( labelText: "Enter Password"),
                              obscureText: true,
                              keyboardType: TextInputType.text, 
                              controller: passwordController,
                            ),
                            new Container(
                              padding: const EdgeInsets.symmetric(vertical: 40.0),
                             child: new MaterialButton(
                                height: 50.0,
                                  minWidth: 150.0,
                                  color: Color.fromARGB(255, 19, 232, 179),
                                  splashColor: Colors.teal,
                                  textColor: Colors.white,
                                  child: new Text("Login"),
                                  //onPressed: OnLoginCallBack(emailController.text, passwordController.text)),
                                  onPressed: onLoginPressed),
                            )
                          ],
                        )),
                  )
                ],
              ) )
        ],
      ),
    );
  }
}