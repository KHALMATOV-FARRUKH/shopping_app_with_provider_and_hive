import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shopping_app_with_provider_and_hive/models/sneaker_model.dart';
import 'package:shopping_app_with_provider_and_hive/services/helper.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/latest_shoes.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/product_card.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/stagger_tile.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class ProductByCat extends StatefulWidget {
  const ProductByCat({Key? key}) : super(key: key);

  @override
  State<ProductByCat> createState() => _ProductByCatState();
}

class _ProductByCatState extends State<ProductByCat>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  late Future<List<Sneakers>> _male;
  late Future<List<Sneakers>> _female;
  late Future<List<Sneakers>> _kids;

  void getMale() {
    _male = Helper().getMaleSneakers();
  }

  void getFemale() {
    _female = Helper().getFemaleSneakers();
  }

  void getKids() {
    _kids = Helper().getKidsSneakers();
  }

  @override
  void initState() {
    super.initState();
    getMale();
    getKids();
    getFemale();
  }

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(6, 12, 16, 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(AntDesign.close, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(FontAwesome.sliders, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                      padding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.transparent,
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: Colors.white,
                      labelStyle: appStyle(24, Colors.white, FontWeight.bold),
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
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: 16,
                  right: 12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: TabBarView(controller: _tabController, children: [
                  latestShoes(male: _male),
                  latestShoes(male: _female),
                  latestShoes(male: _kids),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> filter() {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.white54,
      context: context,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.82,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 5,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.7,
              child: Column(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
