import 'package:flutter/material.dart';

class Products2 extends StatefulWidget {
  const Products2({super.key});

  @override
  State<Products2> createState() => _Products2State();
}

class _Products2State extends State<Products2> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Cart"),
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: const BoxDecoration(
                color: Color(0xffDC4339),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              size: 30,
                              color: Colors.black45,
                            ),
                            SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "${data['photo']}",
                  height: 250,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
