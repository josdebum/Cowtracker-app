import 'package:flutter/material.dart';

class Cattle extends StatefulWidget {
  @override
  _CattleState createState() => _CattleState();
}
class _CattleState extends State<Cattle> {

  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Cattle"),

      ),
      body: Column(

        children: <Widget>[
        //padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      Padding(
      padding: EdgeInsets.all(10.0),
       child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            SizedBox(width: 20),

            TextFormField(
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,

              decoration: InputDecoration(
                hintText: 'The Id of the tracker to be attached to the cattle',
                labelText: 'Tracker Id',
              ),
            ),

            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,

              decoration: InputDecoration(
                hintText: 'Current weight of the cattle',
                labelText: 'Cattle Weight',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.emailAddress,

              decoration: InputDecoration(
                hintText: 'Farm Name',
                labelText: 'Farm Name',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              obscureText: true,

              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',


                icon: Icon(


                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  semanticLabel:
                  _obscureText ? 'show password' : 'hide password',
                ),


              ),
            ),
          ],
        ),
      ),
      ),

      SizedBox(height: 15.0),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            onPressed:
            _sendToServer,

            padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 150.0),
        color: Colors.redAccent,
        child: Text('Add Cattle', style: TextStyle(color: Colors.white, fontSize: 14.0)),
      ),
    ),]


    ));
  }

  _sendToServer() {

  }

}

