import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 36, 6, 73),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "TRICKET",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                //height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    //  bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    //  bottomLeft: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      height: 50.0,
                      child: SignInButton(
                        Buttons.Facebook,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      height: 50.0,
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "-----------------Other Login Options----------------",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter email',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width / 2,
                      height: 50.0,
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "       Proceed       ",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width / 2,
                      height: 50.0,
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "   Skip for now   ",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
