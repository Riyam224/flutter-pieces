// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// todo
import "package:flutter/cupertino.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.color1, required this.color2});
  final Color color1;
  final Color color2;

  _showBtn() {
    Platform.isIOS
        ? CupertinoButton(
            child: Text('ios button'),
            onPressed: () {},
          )
        : TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            onPressed: () {},
            child: Text(
              "android button",
              style: TextStyle(color: Colors.white),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    // todo width of the screen
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        // todo layout builder
        child: Scaffold(
            body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // todo
          _showBtn(),
        ],
      ),
    )));
  }
}

// todo
class ShowModelButtomSheetAndLockOrientation extends StatelessWidget {
  const ShowModelButtomSheetAndLockOrientation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 100,
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.withOpacity(0.3),
              ),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    useSafeArea: true,
                    context: context,
                    builder: (context) => SizedBox(
                          height: double.infinity,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 60,
                                      color: const Color.fromARGB(
                                          255, 197, 134, 130),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 60,
                                      color: const Color.fromARGB(
                                          255, 190, 101, 131),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 60,
                                      color: Color.fromARGB(255, 87, 151, 106),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 60,
                                      color: Color.fromARGB(255, 43, 112, 145),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 60,
                                      color: Color.fromARGB(255, 207, 84, 27),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 60,
                                      color: Color.fromARGB(255, 250, 246, 44),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ));
              },
              child: Text(
                'click',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))),
    );
  }
}

// todo

class MediaQueryResponsive extends StatelessWidget {
  const MediaQueryResponsive({
    super.key,
    required this.width,
    required this.color1,
    required this.color2,
  });

  final double width;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: width < 600
            ? Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: color1,
                  ),
                  Container(width: double.infinity, height: 200, color: color2),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.pink,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.red,
                    ),
                  ),
                ],
              ));
  }
}

//
