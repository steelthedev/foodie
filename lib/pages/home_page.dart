import 'package:flutter/material.dart';
import 'package:foodie/components/custom_drawer.dart';
import 'package:foodie/components/custom_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSliverAppBar(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("LOOL")],
              ),
              title: Text('title'))
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
