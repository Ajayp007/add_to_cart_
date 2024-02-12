import 'package:add_to_cart/utiles/product.dart';
import 'package:flutter/material.dart';

class Products2 extends StatefulWidget {
  const Products2({super.key});

  @override
  State<Products2> createState() => _Products2State();
}

class _Products2State extends State<Products2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Cart"),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: cart
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xffDC4339),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        Image.asset(
                          e['photo'],
                          height: 150,
                        ),
                        const Spacer(flex: 1),
                        Text(
                          e['name'],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                        const Spacer(flex: 5),
                        Text(
                          "\$${e['price']}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                        const Spacer(flex: 1),
                        InkWell(
                          onTap: () {
                            setState(() {
                              cart.remove(e);
                            });
                          },
                          child: const Icon(
                            Icons.delete,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    ));
  }
}
