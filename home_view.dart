import 'package:flutter/material.dart';

import 'package:start_it/navigationbar/navigationbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHomeView();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHomeView();
        } else {
          return MobileHomeView();
        }
      },
    );
  }
}

class DesktopHomeView extends StatefulWidget {
  DesktopHomeView({Key key}) : super(key: key);

  @override
  _DesktopHomeViewState createState() => _DesktopHomeViewState();
}

class _DesktopHomeViewState extends State<DesktopHomeView> {
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
            Navbar(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Learn, Code and Develop',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Text(
                        "Place where you can learn, practice and generate your own code.\n\nWe provide you resources and environment to develop your own code. \n\nAnd once your code is ready you can launch your websites from here itseelf.",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                ),
                Column(
                  children: [
                    SizedBox(height: 80),
                    Container(
                      //alignment: Alignment.centerRight,
                      height: 400,
                      width: 500,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1555099962-4199c345e5dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(width: 4, color: Colors.white)),
                    ),

                    // CircleAvatar(
                    //   radius: 200,
                    //   backgroundImage: NetworkImage(
                    //       'https://images.unsplash.com/photo-1555099962-4199c345e5dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    // )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileHomeView extends StatefulWidget {
  MobileHomeView({Key key}) : super(key: key);

  @override
  _MobileHomeViewState createState() => _MobileHomeViewState();
}

class _MobileHomeViewState extends State<MobileHomeView> {
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
            Navbar(),
            //Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.start,
            //children: <Widget>[
            //Column(
            //children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Learn, Code and Develop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Place where you can learn, practice and generate your own code.\n\nWe provide you resources and environment to develop your own code. \n\nAnd once your code is ready you can launch your websites from here itseelf.",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),
            //],
            //),
            SizedBox(
              width: 300,
            ),
            Container(
              //alignment: Alignment.centerRight,
              height: 200,
              width: 250,
              color: Colors.white,
              child: Image.network(
                'https://images.unsplash.com/photo-1555099962-4199c345e5dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.cover,
              ),
            )
            // ],
            //)
          ],
        ),
      ),
    );
  }
}
