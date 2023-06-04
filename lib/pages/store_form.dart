import 'package:flutter/material.dart';

import '../datamodel/store.dart';


// ignore: use_key_in_widget_constructors
class StoreForm extends StatefulWidget
{
  @override
  State createState() => StoreFormState();
}

class StoreFormState extends State<StoreForm>
{
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void onAddPressed () {
    final item = Store(nameController.text, descriptionController.text);
    Navigator.pop(context, item);     
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
        title: new Text("New Store"),
        leading: new IconButton(
          icon: new Icon(Icons.close),
          onPressed: (){ Navigator.pop(context, null); },
        ),
      ),
      backgroundColor: Colors.white,
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Form(
          // autovalidate: true,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration( labelText: "Enter Name", fillColor: Colors.white),
                keyboardType: TextInputType.text,
                controller: nameController,
              ),
              new TextFormField(
                decoration: new InputDecoration( labelText: "Enter Description"),
                keyboardType: TextInputType.text, 
                controller: descriptionController,
              ),
              new Container (
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: new MaterialButton(
                  height: 50.0,
                  minWidth: 150.0,
                  color: Colors.green[400],
                  splashColor: Colors.teal,
                  textColor: Colors.white,
                  child: new Text("Submit"),
                  onPressed: () { onAddPressed(); }
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}