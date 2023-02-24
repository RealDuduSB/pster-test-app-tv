import 'package:flutter/material.dart';

import '../components/component_button.dart';
import '../components/component_container.dart';
import '../widgets/widget_botton_navigation_bar.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({Key? key}) : super(key: key);

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 209, 14, 0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/joaopster.jpeg",
              width: 50,
              height: 50,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          children: [
            Text("FEATURED"),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/praia.jpeg",
                          width: 50,
                          height: 50,
                        ),
                        Text("Tropical Beaches")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
