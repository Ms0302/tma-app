import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TmaFilter extends StatelessWidget {
  final String name;
  final String svgPath;

  const TmaFilter({
    super.key,
    required this.name,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 36,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(svgPath),
          ),
        ],
      ),
    );
  }
}
