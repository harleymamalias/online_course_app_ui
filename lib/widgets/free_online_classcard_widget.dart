import 'package:flutter/material.dart';

class FreeOnlineClassCardWidget extends StatelessWidget {
  const FreeOnlineClassCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 460,
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      child: const Center(
        child: Text('Sample'),
      ),
    );
  }
}