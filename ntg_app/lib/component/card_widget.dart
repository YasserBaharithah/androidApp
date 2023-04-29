import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, this.title, this.detail}) : super(key: key);

  final String? title;
  final String? detail;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Card(
        color: Colors.tealAccent.shade700,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            children: [
              Text(
                title!,
                style: const TextStyle(
                  fontFamily: 'lil',
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              const Text('|'),
              const SizedBox(
                width: 9,
              ),
              Text(
                detail!,
                style: const TextStyle(
                  fontFamily: 'lil',
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
