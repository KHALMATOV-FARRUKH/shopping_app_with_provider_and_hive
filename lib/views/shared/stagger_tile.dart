import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';

class StaggerTile extends StatefulWidget {
  const StaggerTile({Key? key, required this.imageUrl, required this.name, required this.price}) : super(key: key);

  final String imageUrl;
  final String name;
  final String price;

  @override
  State<StaggerTile> createState() => _StaggerTileState();
}

class _StaggerTileState extends State<StaggerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: widget.imageUrl, height: 149,),
            Container(
              padding: const EdgeInsets.only(top: 5),
              height: 75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,
                      style: appStyleWithHt(20, Colors.black, FontWeight.w700, 1)),
                  Text(widget.price,
                      style: appStyleWithHt(20, Colors.black, FontWeight.w500, 1)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
