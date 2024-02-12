import 'package:add_to_cart/utiles/product.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("My Cart"),
            leading: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.menu,
                size: 30,
              ),
            ),
            actions: [
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'products2');
                  },
                  child: const Icon(Icons.shopping_cart))
            ]),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
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
              ),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: Text(
                    "Choose Your Best Food Have A Great Day",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
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
                                width: 130,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
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
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "More",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "If You Want To Some Special...",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(5),
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
                                    const EdgeInsets.symmetric(horizontal: 20),
                                decoration: const BoxDecoration(
                                  color: Color(0xffDC4339),
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
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              18,
                            ),
                            color: const Color(0xffFE4900)),
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
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
