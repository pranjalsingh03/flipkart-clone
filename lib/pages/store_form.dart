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
    return  Scaffold(
       appBar:  AppBar(
        title:  Text("New Store"),
        leading:  IconButton(
          icon:  Icon(Icons.close),
          onPressed: (){ Navigator.pop(context, null); },
        ),
      ),
      backgroundColor: Colors.white,
      body:  Container(
        padding: const EdgeInsets.all(40.0),
        child:  Form(
          // autovalidate: true,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
               TextFormField(
                decoration:  const InputDecoration( labelText: "Enter Name", fillColor: Colors.white),
                keyboardType: TextInputType.text,
                controller: nameController,
              ),
               TextFormField(
                decoration:  const InputDecoration( labelText: "Enter Description"),
                keyboardType: TextInputType.text, 
                controller: descriptionController,
              ),
               Container (
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child:  MaterialButton(
                  height: 50.0,
                  minWidth: 150.0,
                  color: Colors.green[400],
                  splashColor: Colors.teal,
                  textColor: Colors.white,
                  child:  const Text("Submit"),
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