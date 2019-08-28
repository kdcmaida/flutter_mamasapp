import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mamasapp/screens/forgot.dart';
import 'package:flutter_mamasapp/screens/home.dart';
import 'package:flutter_mamasapp/screens/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode _emailTextFocus = new FocusNode();
  FocusNode _passwordTextFocus = new FocusNode();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/login_bg.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 65.0, left: 55.0, right: 55.0, bottom: 10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/login_logo.png',
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 11.0, right: 11.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Find your playmate easily and safely in your neighborhood',
                            textAlign: TextAlign.center,
                            style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        )),
                    Container(
                      height: 10.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 11.0, right: 11.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Childrens Preferred App to find local playmates',
                            textAlign: TextAlign.center,
                            style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        )),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                      child: TextFormField(
                        controller: emailController,
                        focusNode: _emailTextFocus,
                        style: TextStyle(
                            color: Colors.white, fontSize: 16.0, height: 0.5),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter UserName';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'UserName',
                            labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                      child: TextFormField(
                        controller: passwordController,
                        focusNode: _passwordTextFocus,
                        style: TextStyle(
                            color: Colors.white, fontSize: 16.0, height: 0.5),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter Password';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                            border: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                      child: RaisedButton(
                        color: hexToColor("#053C5C"),
                        child: Text(
                          'Login',
                          textScaleFactor: 1.5,
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                        },
                      ),
                    ),
                    Container(
                      height: 10.0,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 0.0, left: 15.0, right: 15.0),
                      child: RaisedButton(
                        color: hexToColor("#053C5C"),
                        child: Text(
                          'Register',
                          textScaleFactor: 1.5,
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {


                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                        },
                      ),
                    ),
                    Container(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                                builder: (context) => ForgotPassordScreen()));
                            print('forgot password click');
                          },
                          child: Text(
                            'Forgot Password',
                            textAlign: TextAlign.center,
                            style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                          )),
                    ),
                  ],
                ),


              ],
            ))

//      body: Stack(
//        children: <Widget>[
//
//          ListView(
//            children: <Widget>[
//
//
//            ],
//          )
//        ],
//      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
