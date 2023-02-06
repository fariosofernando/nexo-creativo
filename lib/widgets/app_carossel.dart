import 'package:flutter/material.dart';

class CarrosselViewItem extends StatelessWidget {
  final String title, description, asset;
  const CarrosselViewItem({
    super.key,
    required this.mediaSize,
    required this.title,
    required this.description,
    required this.asset,
  });

  final Size mediaSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            width: mediaSize.width * .70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(asset),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              children: [
                Text(title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Text(description),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              children: [
                FilledButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: 80.0,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                        Text('Demo'),
                        SizedBox(width: 8.0),
                        Icon(Icons.arrow_forward_rounded),
                      ]),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
