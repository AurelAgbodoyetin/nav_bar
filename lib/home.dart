import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color1 = Colors.white;
  Color color2 = Colors.white;
  Color color3 = Colors.white;

  int? current;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                width: 80.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = 1;
                          color1 = Colors.red;
                          color2 = Colors.white;
                          color3 = Colors.white;
                        });
                      },
                      child: Bouton(
                        content: 1,
                        color: color1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = 2;
                          color2 = Colors.red;
                          color1 = Colors.white;
                          color3 = Colors.white;
                        });
                      },
                      child: Bouton(
                        content: 2,
                        color: color2,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = 3;
                          color3 = Colors.red;
                          color2 = Colors.white;
                          color1 = Colors.white;
                        });
                      },
                      child: Bouton(
                        content: 3,
                        color: color3,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    current == null ? "" : "Le bouton $current a été tapé",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Bouton extends StatelessWidget {
  final int content;
  final Color color;
  const Bouton({
    Key? key,
    required this.content,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: color,
      ),
      child: Text(
        content.toString(),
      ),
    );
  }
}
