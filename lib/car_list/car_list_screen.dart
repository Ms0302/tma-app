import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uchka_ah/car_list/widget/car_list_card.dart';
import 'package:uchka_ah/components/tma_filter.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
            width: 260,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                const Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: '"Search"',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Image.asset('assets/images/search.png')),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset('assets/icons/filter.svg'),
          ),
        ],
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 28.0, left: 14, right: 14),
                child: TmaFilter(
                  name: 'Бренд',
                  svgPath: 'assets/icons/filter_color.svg',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 28.0,
                  right: 14,
                  left: 14,
                ),
                child: TmaFilter(
                  name: 'Төрөл',
                  svgPath: 'assets/icons/filter_color.svg',
                ),
              ),
            ],
          ),
          Flexible(
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
                          padding: EdgeInsets.only(top:14.0,right: 14,left: 7),
                          child: ProductListCard(
                            productName: 'Toyota',
                            productDescription: 'Land Cruiser 300',
                            productPrice: '300.000.000 ₮',
                            imagePath: 'assets/images/car_list.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:14.0,left: 10,right: 7),
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
        ],
      ),
    );
  }
}
