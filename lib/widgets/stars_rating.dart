import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
        size: 20,
      ),
    );
  }
}
