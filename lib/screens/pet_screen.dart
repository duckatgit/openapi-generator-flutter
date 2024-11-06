import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_api_generator_flutter/petstore/api.dart';

class PetScreen extends StatefulWidget {
  const PetScreen({super.key});

  @override
  State<PetScreen> createState() => _PetScreenState();
}

class _PetScreenState extends State<PetScreen> {
  Map<String, int>? data;

  Future getInventory() async {
    var response = await StoreApi().getInventory();

    setState(() {
      data = response;
    });
    log("inventory data: $data");
  }

  @override
  void initState() {
    getInventory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          'Inventory',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: data == null
            ? const Center(
                child: CupertinoActivityIndicator(
                  color: Colors.indigoAccent,
                ),
              )
            : Column(
                children: [
                  itemCard(
                    title: "Ordered",
                    data: data!['ordered'].toString(),
                  ),
                  itemCard(
                    title: "Approved",
                    data: data!['approved'].toString(),
                  ),
                  itemCard(
                    title: "Placed",
                    data: data!['placed'].toString(),
                  ),
                  itemCard(
                    title: "Test",
                    data: data!['test'].toString(),
                  ),
                  itemCard(
                    title: "Pending",
                    data: data!['pending'].toString(),
                  ),
                  itemCard(
                    title: "Deliver",
                    data: data!['deliver'].toString(),
                  ),
                  itemCard(
                    title: "Delivered",
                    data: data!['delivered'].toString(),
                  ),
                ],
              ),
      ),
    );
  }

  Widget itemCard({
    required String title,
    required String data,
  }) {
    return Card(
      surfaceTintColor: Color((math.Random().nextDouble() * 0xFFFFFFFF).toInt())
          .withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              data,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
