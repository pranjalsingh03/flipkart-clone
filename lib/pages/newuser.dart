import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform signup logic here
      String username = _usernameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;

      // Here you can call an API or perform any other required actions for signup
      // For this example, we'll just print the data
      print('Username: $username');
      print('Email: $email');
      print('Password: $password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup')),
      body: Padding(
        padding: EdgeInsets.all(19.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 50)),
              TextFormField(
                controller: _usernameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username'),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email';
                  }
                  // You can add more complex email validation if needed
                  return null;
                },
                decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: 'Email'),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              TextFormField(
                
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  // You can add more password validation rules if needed
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'),
              ),
              SizedBox(height: 20),
              Center(
                child:  
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Sign Up'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}