import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
    );
  }
}
