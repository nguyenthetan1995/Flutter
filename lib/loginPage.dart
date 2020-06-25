import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'users.dart';

class LoginPageState  extends State<LoginPage>{
  final User user = new User();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextField _Emailinput = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your Email...',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType:  TextInputType.emailAddress,
      autocorrect: false,
      onChanged: (text){
        setState(() {
          this.user.email = text;
        });
      },
    );
    final TextField _textinput = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your username...',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none
      ),
      keyboardType:  TextInputType.text,
      autocorrect: false,
      onChanged: (text){
        setState(() {
          this.user.username = text;
        });
      },
    );
    final TextField _passinput = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your password...',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none
      ),
      keyboardType:  TextInputType.text,
      obscureText: true,
      autocorrect: false,
      onChanged: (text){
        setState(() {
          this.user.password = text;
        });
      },
    );
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text('This is login page'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right:20.0, bottom: 10.0,top: 10.0),
            decoration: new BoxDecoration(
              color: Colors.white70,
              border: new Border.all(width: 1.0 , color : Colors.blue),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _Emailinput
          ),
          new Container(
              margin: new EdgeInsets.only(left: 20.0, right:20.0, bottom: 10.0),
              decoration: new BoxDecoration(
                  color: Colors.white70,
                  border: new Border.all(width: 1.0 , color : Colors.blue),
                  borderRadius: const BorderRadius.all(const Radius.circular(6.0))
              ),
              child: _textinput
          ),
          new Container(
              margin: new EdgeInsets.only(left: 20.0, right:20.0, bottom: 10.0),
              decoration: new BoxDecoration(
                  color: Colors.white70,
                  border: new Border.all(width: 1.0 , color : Colors.blue),
                  borderRadius: const BorderRadius.all(const Radius.circular(6.0))
              ),
              child: _passinput
          ),
          new Container(
            margin: const EdgeInsets.all(20.0),
             child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: new Text('Login'),
                          onPressed: (){
                            print('username: ${user.username}');
                            print('email: ${user.email}');
                            print('pass: ${user.password}');
                          }
                      )
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}