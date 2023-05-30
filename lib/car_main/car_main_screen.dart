import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:uchka_ah/car_main/car_main_controller.dart';
import 'package:uchka_ah/car_main/widget/product_card.dart';
import 'package:uchka_ah/theme/tma_color.dart';

class CarMainScreen extends GetView<CarMainController> {
  const CarMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 40,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
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
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0),
                Color.fromRGBO(0, 0, 0, 0.4),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
            ),
          ),
          child: ListView(
              padding: EdgeInsets.zero, children: controller.drawerList),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('assets/images/news.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Бренд',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: controller.goToBrand,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Бүгдийг харах',
                            style: TextStyle(
                                color: TmaColor.mainColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/images/audi.png'),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Машин',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: controller.goToCarList,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Бүгдийг харах',
                            style: TextStyle(
                                color: TmaColor.mainColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                  ProductCard(
                      productName: 'Toyota',
                      productDescription: 'Land Cruiser 300',
                      productPrice: '300.000.000 ₮'),
                  ProductCard(
                      productName: 'Toyota',
                      productDescription: 'Land Cruiser 300',
                      productPrice: '300.000.000 ₮'),
                  ProductCard(
                      productName: 'Toyota',
                      productDescription: 'Land Cruiser 300',
                      productPrice: '300.000.000 ₮'),
                  ProductCard(
                      productName: 'Toyota',
                      productDescription: 'Land Cruiser 300',
                      productPrice: '300.000.000 ₮'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
