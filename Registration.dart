import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopRegister();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopRegister();
        } else {
          return MobileRegister();
        }
      },
    );
  }
}

class DesktopRegister extends StatefulWidget {
  DesktopRegister({Key key}) : super(key: key);

  @override
  _DesktopRegisterState createState() => _DesktopRegisterState();
}

class _DesktopRegisterState extends State<DesktopRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(195, 20, 50, 1),
            Color.fromRGBO(36, 11, 54, 1)
          ])),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'My Website',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 26),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Container(
                          //height: 400,
                          width: 500,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Registration',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.pink[800]),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.topCenter, width: 400,
                                height: 50,
                                //alignment: Alignment.topRight,
                                child: TextFormField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(),
                                      hintText: 'Name'),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 400,
                                height: 50,
                                child: TextFormField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(),
                                      hintText: 'Email'),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 400,
                                height: 50,
                                child: TextFormField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(),
                                      hintText: 'College Name'),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 400,
                                height: 50,
                                child: TextFormField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(),
                                      hintText: 'Password'),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ButtonTheme(
                                minWidth: 100,
                                height: 40,
                                buttonColor: Colors.pink[800],
                                child: RaisedButton(
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text('Already a user? Log In'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(
                      width: 200,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 700,
                          height: 50,
                          color: Colors.pink[800],
                          child: Center(
                            child: Text(
                              "Get started",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Join the committee of coders and developers.\nBuild, create and learn everyday.\nAnd achieve your dreams.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          //alignment: Alignment.centerRight,
                          height: 300,
                          width: 400,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(90)),
                              border:
                                  Border.all(width: 3, color: Colors.white)),
                        ),
                      ],
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height / 2,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white.withOpacity(0.9),
                    //   ),
                    // )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class MobileRegister extends StatefulWidget {
  MobileRegister({Key key}) : super(key: key);

  @override
  _MobileRegisterState createState() => _MobileRegisterState();
}

class _MobileRegisterState extends State<MobileRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(195, 20, 50, 1),
            Color.fromRGBO(36, 11, 54, 1)
          ])),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'My Website',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 400,
                          height: 40,
                          color: Colors.pink[800],
                          child: Center(
                            child: Text(
                              "Get started",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Join the committee of coders and developers.\nBuild, create and learn everyday.\nAnd achieve your dreams.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          //alignment: Alignment.centerRight,
                          height: 200,
                          width: 300,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                              border:
                                  Border.all(width: 3, color: Colors.white)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Stack(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Container(
                              //height: 400,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Registration',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.pink[800]),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    alignment: Alignment.topCenter, width: 300,
                                    height: 40,
                                    //alignment: Alignment.topRight,
                                    child: TextFormField(
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(),
                                          hintText: 'Name'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 300,
                                    height: 40,
                                    child: TextFormField(
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(),
                                          hintText: 'Email'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 300,
                                    height: 40,
                                    child: TextFormField(
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(),
                                          hintText: 'College Name'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 300,
                                    height: 40,
                                    child: TextFormField(
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(),
                                          hintText: 'Password'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ButtonTheme(
                                    minWidth: 90,
                                    height: 35,
                                    buttonColor: Colors.pink[800],
                                    child: RaisedButton(
                                      child: Text(
                                        'Register',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text('Already a user? Log In'),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ],
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height / 2,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white.withOpacity(0.9),
                    //   ),
                    // )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
