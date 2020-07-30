import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopLogin();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopLogin();
        } else {
          return MobileLogin();
        }
      },
    );
  }
}

class DesktopLogin extends StatefulWidget {
  DesktopLogin({Key key}) : super(key: key);

  @override
  _DesktopLoginState createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
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
            padding: EdgeInsets.only(left: 30, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'My Website',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 26),
                  ),
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
                                'Login',
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
                                    'Login',
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
                                child: Text('Forget password?'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(
                      width: 200,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 1,
                          //height: double.infinity,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),

                          child: Column(
                            children: [
                              SizedBox(
                                height: 200,
                              ),
                              Text(
                                'Hey!',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 50,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Welcome back',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 46,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // CircleAvatar(
                              //   radius: 100,
                              //   backgroundImage: NetworkImage(
                              //       'https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80'),
                              // ),
                            ],
                          ),
                        )
                      ],
                    )
                    // Container(
                    //   //alignment: Alignment.centerRight,
                    //   height: 500,
                    //   width: 400,
                    //   //color: Colors.white,
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: NetworkImage(
                    //               'https://image.shutterstock.com/image-vector/concept-sign-page-on-computer-260nw-1145293103.jpg'),
                    //           fit: BoxFit.cover),
                    //       borderRadius: BorderRadius.all(Radius.circular(70)),
                    //       border: Border.all(width: 3, color: Colors.white)),
                    // ),
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

class MobileLogin extends StatefulWidget {
  MobileLogin({Key key}) : super(key: key);

  @override
  _MobileLoginState createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
