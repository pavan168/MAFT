import 'package:flutter/material.dart';
import 'home.dart';


void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(72, 121, 209, 1),
        title: Text("Login"),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 30.0),
              child: new Text("Result Tabulation",
                style: new TextStyle(
                    fontSize: 24.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30.0),
              child: new TextField(
                decoration: new InputDecoration(
                border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.blue)
                ),
                hintText: 'Username',
                labelText: 'Username',
                prefixIcon: const Icon(Icons.person, color: Colors.blue,),
                prefixText: ' ',
                suffixText: ' ',
                ),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 30.0),
              child: new TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.blue)
                ),
                labelText: 'Password',
                prefixIcon: const Icon(Icons.mail, color: Colors.blue,),
                  ),

                obscureText: true,
              ),
            ),
            Padding(
             padding: const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
              child: new SizedBox(
                width: 350,
                height: 60.0,
                child: new RaisedButton(
                  textColor: Colors.white,
                  color: Color.fromRGBO(72, 121, 209, 1),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}




