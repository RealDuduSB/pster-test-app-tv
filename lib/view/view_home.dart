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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Row(),
        ],
      ),
    );
  }
}
