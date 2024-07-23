import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.color1, required this.color2});
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    // todo width of the screen
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: width < 600
                  ? Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          color: color1,
                        ),
                        Container(
                            width: double.infinity, height: 200, color: color2),
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
                    ))),
    );
  }
}
