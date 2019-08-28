import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPassordScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPassordScreenState();
  }
}

class ForgotPassordScreenState extends State<ForgotPassordScreen> {

  var _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  FocusNode _unameTextFocus = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          moveToLastScreen();
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text('Forgot Password'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  moveToLastScreen();
                },
              ),
            ),
            body: Form(
                key: _formKey,
                child: Stack(
                  children: <Widget>[
                    ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, left: 15.0, right: 15.0),
                          child: Text(
                            'You can receive a new password if you enter your email below',
                            style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, left: 15.0, right: 15.0),
                          child: TextFormField(
                            controller: userController,
                            focusNode: _unameTextFocus,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                height: 0.5),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter UserName';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),

                        Container(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0.0, left: 15.0, right: 15.0),
                          child: RaisedButton(
                            color: hexToColor("#053C5C"),
                            child: Text(
                              'Send',
                              textScaleFactor: 1.5,
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              moveToLastScreen();
                            },
                          ),
                        ),


                      ],
                    ),
                  ],
                ))));
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  void moveToLastScreen() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
//    Navigator.pop(context);
  }
}
