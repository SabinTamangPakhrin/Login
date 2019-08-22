import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var hexagon = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.all_out,
        size: 50,
        color: Colors.white,
      ),
      Text(
        'Hexagon',
        style: TextStyle(fontSize: 25, color: Colors.white),
      )
    ],
  );

  var username = TextFormField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
        filled: true,
        //  focusColor: Colors.white,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.supervised_user_circle),
        hintText: 'Username',
        hintStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
  );

  var password = TextFormField(
    obscureText: true,
    autofocus: false,
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.vpn_key),
        hintText: 'Password',
        hintStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
  );

  var button = RaisedButton(
    elevation: 5,
    onPressed: () {},
    color: Color(int.parse('0xFF' + 'fc6d91')),
    child: Text(
      'Login',
      style: TextStyle(color: Colors.white),
    ),
  );

  var account = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Don\'t have an account',
        style: TextStyle(color: Colors.white),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'Sign Up',
          style: TextStyle(
              color: Colors.white, decoration: TextDecoration.underline),
        ),
      )
    ],
  );

  var login = Text(
    'Login with social network',
    style: TextStyle(color: Colors.white),
  );

  var socialNetwork = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Icon(
          Icons.share,
          color: Colors.white,
          size: 20,
        ),
      ),
      Icon(
        Icons.subscriptions,
        color: Colors.white,
        size: 20,
      )
    ],
  );

  var loginText = Container(
    child: Text(
      'Login',
      style: TextStyle(color: Colors.white),
    ),
    width: double.infinity,
    alignment: Alignment.centerRight,
  );

  space(double space) {
    return SizedBox(height: space);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          //container for background img and holding all widget
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.fill)),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                loginText,
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      hexagon,
                      space(60),
                      username,
                      space(20),
                      password,
                      space(30),
                      button,
                      account,
                      space(60),
                      login,
                      space(10),
                      socialNetwork
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
