// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Color(0xffECECEC), Color(0xffFFFFFF)])),
      child: Column(children: <Widget>[
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                const Color(0xffffffff).withOpacity(.85),
                const Color(0xffFFFFFF).withOpacity(0.65)
              ])),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff4956B2),
            ),
            onPressed: () {},
          ),
        )
      ]),
    ));
  }
}
