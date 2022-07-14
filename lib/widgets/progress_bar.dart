import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key, this.count, this.icons, this.total})
      : super(key: key);

  final icons;
  final count;
  final total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count - $total',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          const SizedBox(width: 10),
          ...icons,
        ],
      ),
    );
  }
}
