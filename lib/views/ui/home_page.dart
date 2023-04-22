import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/top_image.png"),
                        fit: BoxFit.cover)),
                child: Container(
                  padding: const EdgeInsets.only(left: 8, bottom: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Athletics Shoes",
                        style: appStyleWithHt(
                            42, Colors.white, FontWeight.bold, 1.2),
                      ),
                      Text(
                        "Collection",
                        style: appStyleWithHt(
                            42, Colors.white, FontWeight.bold, 1.2),
                      ),
                      TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.white,
                          labelStyle:
                              appStyle(24, Colors.white, FontWeight.bold),
                          unselectedLabelColor: Colors.grey.withOpacity(0.3),
                          tabs: const [
                            Tab(
                              text: "Men Shoes",
                            ),
                            Tab(
                              text: "Women Shoes",
                            ),
                            Tab(
                              text: "Kids Shoes",
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.265),
                child: Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: TabBarView(controller: _tabController, children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.405,
                          child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return const ProductCard(
                                  price: "\$20.00",
                                  category: "Men Shoes",
                                  id: "1",
                                  name: "Adidas NMD Runner",
                                  image:
                                      "https://d326fntlu7tb1e.cloudfront.net/uploads/44127a0f-f623-475f-ae96-a05962148d32-FU7712_a1.webp",
                                );
                              }),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(12, 20, 12, 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Latest Shoes",
                                    style: appStyle(
                                        24, Colors.black, FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Show All",
                                        style: appStyle(
                                            22, Colors.black, FontWeight.w500),
                                      ),
                                      const Icon(AntDesign.caretright,
                                          size: 20),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.13,
                          child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 0.8,
                                            offset: Offset(0, 1),
                                          ),
                                        ]),
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.28,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://d326fntlu7tb1e.cloudfront.net/uploads/44127a0f-f623-475f-ae96-a05962148d32-FU7712_a1.webp",
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.lightGreenAccent,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}
