import 'package:flutter/material.dart';
import 'package:project/pages/newuser.dart';
import 'package:project/pages/ui/homePage.dart';

import 'forget_password.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

// class Authenticate extends StatelessWidget {

//       // final String authenticateEmail;
//       // final String authenticatePassword;

//       // Authenticate({this.authenticateEmail, this.authenticatePassword});

//       // Make a call to db to check if the data provided is correct or not
//       // If it is correct we then navigate the user to Home() Widget
//       // Else to SignIn() Widget

//   @override
//   Widget build(BuildContext context) {

//      if (email=="magan123@gmail.com") {
//        return HomePage();
//      }
//      else {
//        return SignupPage();
//      }

//   }
// }

class LoginPageState extends State<LoginPage> {
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();



  // void onLoginPressed() {
  //   print("OnLoginPressed " +
  //       emailController.text +
  //       " pw : " +
  //       passwordController.text);
  //   _loadHomePage();
  // }

  void onNewUserPress() {
    print("OnLoginPressed " +
        emailController.text +
        " pw : " +
        passwordController.text);
    _loadNewUser();
  }

  void _loadNewUser() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return SignupPage();
    }));
  }

  void onForgotPasswordPage() {
    print("OnLoginPressed " +
        emailController.text +
        " pw : " +
        passwordController.text);
    _ForgotPasswordPageState();
  }

  void _ForgotPasswordPageState() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return ForgotPasswordPage();
    }));
  }

  // void _loadHomePage() {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (BuildContext context) {
  //     return HomePage();
  //   }));
  // }

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 65, 164),
      body: Stack(
        key: _formKey,
        fit: StackFit.expand,
        children: <Widget>[
          Theme(
              data: ThemeData(
                  brightness: Brightness.dark,
                  inputDecorationTheme: const InputDecorationTheme(
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
                    padding: const EdgeInsets.all(30.0),
                    child: Form(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Email"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Password"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
  child: Center(
    child: ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          if (emailController.text == "magan123@gmail.com" &&
              passwordController.text == "asdfghjkl") {
            String enteredEmail = emailController.text; // Retrieve the entered email
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  email: enteredEmail, // Pass the entered email to HomePage
                ),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Invalid Credentials')),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Please fill input')),
          );
        }
      },
      child: const Text('Submit'),
    ),
  ),
),

                        
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 0.0),
                          child: TextButton(
                              child: Text(
                                "New User/SingUp",
                              ),
                              //onPressed: OnLoginCallBack(emailController.text, passwordController.text)),
                              onPressed: onNewUserPress),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 0.0),
                          child: TextButton(
                              child: Text(
                                "Forget Password",
                              ),
                              //onPressed: OnLoginCallBack(emailController.text, passwordController.text)),
                              onPressed: onForgotPasswordPage),
                        ),
                        // Container(
                        //   padding: const EdgeInsets.symmetric(vertical: 5.0),
                        //   child: MaterialButton(
                        //       height: 50.0,
                        //       minWidth: 150.0,
                        //       color: const Color.fromARGB(255, 19, 232, 179),
                        //       splashColor: Colors.teal,
                        //       textColor: Colors.white,
                        //       child: Text("Login"),
                        //       //onPressed: OnLoginCallBack(emailController.text, passwordController.text)),
                        //       onPressed: onLoginPressed),
                        // )
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
