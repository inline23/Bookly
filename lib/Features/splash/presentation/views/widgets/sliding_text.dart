import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimition,
  });

  final Animation<Offset> slidingAnimition;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimition,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimition,
            child: Text(
              'Read Free Books ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
