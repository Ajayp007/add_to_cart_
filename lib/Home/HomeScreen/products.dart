import 'package:add_to_cart/utiles/product.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffDC4339),
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {},
              child: const Icon(
                Icons.sort_rounded,
                size: 35,
                color: Colors.white,
              ))
        ],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
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
                child: Container(
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
                      Text(
                        "Search Food...",
                        style: TextStyle(fontSize: 20, color: Colors.black45),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                "${data['photo']}",
                height: 250,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 50,
              color: Colors.deepOrangeAccent,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Text(
              "${data['name']}",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 3),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Text(
              "Only Today This Indian Food Offer",
              style: TextStyle(color: Colors.black45, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.deepOrangeAccent)),
              child: Center(
                  child: Text(
                "\$ ${data['price']}",
                style: const TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Indian cuisine consists of a variety of regional and traditional cuisines native to the Indian subcontinent. Given the diversity in soil, climate, culture, ethnic groups, and occupations, these cuisines vary substantially and use locally available spices, herbs, vegetables, and fruits.",
              style: TextStyle(color: Colors.deepOrange),
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
                        16,
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
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cart.add(data);
          Navigator.pop(context);
        },
        child: const Icon(Icons.add),
      ),
    ));
  }
}
