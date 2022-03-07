import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Crbtnbr extends StatefulWidget {
  const Crbtnbr({Key? key}) : super(key: key);

  @override
  State<Crbtnbr> createState() => _CrbtnbrState();
}

class _CrbtnbrState extends State<Crbtnbr> {
  var pageindex = 0;
  var mypages = [One(), Two(), Three()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.green,
          animationCurve: Curves.bounceIn,
          onTap: (index) {
            setState(() {
              pageindex = index;
            });
          },
          items: [
            Icon(Icons.person),
            Icon(Icons.mail_outline_sharp),
            Icon(Icons.merge_type),
          ]),
      body: mypages[pageindex],
    );
  }
}

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.indigo[200],
        child: Text(
          "one",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.indigo[200],
        child: Text(
          "two",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.indigo[200],
        child: Text(
          "three",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
