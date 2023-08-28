import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DummyRowCard extends StatelessWidget {
  const DummyRowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xFFD9D9D9),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              'assets/briefcase.svg',
              semanticsLabel: 'my SVG Img',
              width: 85,
              height: 51,
            ),
          ),
          const Text("1st Image",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ))
        ],
      ),
    );
  }
}
