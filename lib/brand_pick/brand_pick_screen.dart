import 'package:flutter/material.dart';
import 'package:uchka_ah/car_list/widget/car_list_card.dart';

class BrandPicker extends StatelessWidget {
  const BrandPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: const Text('Toyota'),
        ),
      ),
      body: SafeArea(
        child: Flexible(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 8,
                padding: const EdgeInsets.all(8.0),
                itemBuilder: (BuildContext context, int index) {
                  return const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14.0, right: 14, left: 7),
                        child: ProductListCard(
                          productName: 'Toyota',
                          productDescription: 'Land Cruiser 300',
                          productPrice: '300.000.000 ₮',
                          imagePath: 'assets/images/car_list.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 14.0, left: 10, right: 7),
                        child: ProductListCard(
                          productName: 'Toyota',
                          productDescription: 'Land Cruiser 300',
                          productPrice: '300.000.000 ₮',
                          imagePath: 'assets/images/car_list.png',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
