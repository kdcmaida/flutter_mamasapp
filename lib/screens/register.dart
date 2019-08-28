import 'package:flutter/material.dart';
import 'package:flutter_mamasapp/screens/login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatpasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  FocusNode _emailTextFocus = new FocusNode();
  FocusNode _passwordTextFocus = new FocusNode();
  FocusNode _rpasswordTextFocus = new FocusNode();
  FocusNode _unameTextFocus = new FocusNode();
  FocusNode _fnameTextFocus = new FocusNode();
  FocusNode _lnameTextFocus = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          moveToLastScreen();
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text('Register'),
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
                                labelText: 'UserName',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15.0, left: 15.0, right: 15.0),
                          child: TextFormField(
                            controller: passwordController,
                            focusNode: _passwordTextFocus,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                height: 0.5),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter Password';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15.0, left: 15.0, right: 15.0),
                          child: TextFormField(
                            controller: repeatpasswordController,
                            focusNode: _rpasswordTextFocus,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                height: 0.5),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter Repeat Password';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'Repeat Password',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15.0, left: 15.0, right: 15.0),
                          child: TextFormField(
                            controller: emailController,
                            focusNode: _emailTextFocus,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                height: 0.5),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter Email';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15.0, left: 15.0, right: 15.0),
                          child: TextFormField(
                            controller: fnameController,
                            focusNode: _fnameTextFocus,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                height: 0.5),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter First Name';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'First Name',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15.0, left: 15.0, right: 15.0),
                          child: TextFormField(
                            controller: lnameController,
                            focusNode: _lnameTextFocus,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                height: 0.5),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter Last Name';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'Last Name',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
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
                              'Register',
                              textScaleFactor: 1.5,
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
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
                              'Already Register Login',
                              textScaleFactor: 1.5,
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              moveToLastScreen();
                            },
                          ),
                        ),
                        Container(
                          height: 10.0,
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

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen()));
//    Navigator.pop(context);


  }
}
