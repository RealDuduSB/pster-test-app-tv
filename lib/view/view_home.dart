import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Text(
                  "FEATURED",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/praia.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/linear perspective.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Linear Perpective"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/refractions.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Refractions"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/cristo redentor.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/us west.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("The American West"))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Text(
                  "FEATURED",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/praia.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/linear perspective.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/reflection.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/cristo redentor.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/us west.jpeg",
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Center(child: const Text("The American West"))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Text(
                  "FEATURED",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/praia.jpeg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/praia.jpeg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/praia.jpeg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/praia.jpeg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Center(child: const Text("Tropical Beaches"))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14, left: 14),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/us west.jpeg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Center(child: const Text("The American West"))
                        ],
                      ),
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
