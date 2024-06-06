import 'package:flutter/material.dart';

class Finishing extends StatelessWidget {
  const Finishing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage('assets/bubble 01 (6).png')),
              Positioned(child: Image(image: AssetImage('assets/Card Shape.png'))),
              // Positioned(child: Image(image: AssetImage('assets/71838C20-3BF0-4ACB-92D4-F30E0CF43659.png'))),
                            // Positioned(child: Text('Hello')),
              // Positioned(child: Text('Discover a world of possibilities in your fingertips.'))
            ],
          )
        ],
      ),
    );
  }
}