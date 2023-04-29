import 'package:flutter/material.dart';
import 'package:flutter_examples/home/product_build.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) {
          return const ProductBuild();
        },
      ),
    );
  }
}
