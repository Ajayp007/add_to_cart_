import 'package:add_to_cart/utiles/product.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool guj = true, pun = true;
  String? select = 'all';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text("My Cart"),
          leading: const Icon(
            Icons.menu,
            size: 30,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'products2');
              },
              child: const Icon(
                Icons.shopping_cart,
                size: 28,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Hot & Fast Food",
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.deepOrangeAccent),
                  ),
                ),
                const SizedBox(height: 3),
                const Center(
                  child: Text(
                    "Choose Your Best Food Have A Great Day",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 5),
                DropdownButton(
                  value: select,
                  isExpanded: true,
                  padding: const EdgeInsets.all(10),
                  items: const [
                    DropdownMenuItem(
                      value: "all",
                      child: Text("All"),
                    ),
                    DropdownMenuItem(
                      value: "guj",
                      child: Text("Gujarati"),
                    ),
                    DropdownMenuItem(
                      value: "pun",
                      child: Text("Punjabi"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      select = value;

                      if (select == 'all') {
                        guj = true;
                        pun = true;
                      } else if (select == 'guj') {
                        guj = true;
                        pun = false;
                      } else {
                        guj = false;
                        pun = true;
                      }
                    });
                  },
                ),
                const SizedBox(height: 5),
                Visibility(
                  visible: guj,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: product
                          .map((e) => InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'products',
                                      arguments: e);
                                },
                                child: Container(
                                    height: 230,
                                    width: 150,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffDC4339),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "${e['photo']}",
                                          height: 200,
                                        ),
                                        Text(
                                          "${e['name']}",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                              ))
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "More",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  "If You Want To Some Special...",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: pun,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: product1
                          .map(
                            (e) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'products',
                                    arguments: e);
                              },
                              child: Container(
                                height: 230,
                                width: 160,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffDC4339),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "${e['photo']}",
                                      height: 200,
                                    ),
                                    Text(
                                      "${e['name']}",
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              18,
                            ),
                            color: const Color(0xffFE4900),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const Center(
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
